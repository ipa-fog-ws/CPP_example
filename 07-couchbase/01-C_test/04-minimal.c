#include <stdio.h>
#include <libcouchbase/couchbase.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#ifdef _WIN32
#define PRIu64 "I64u"
#else
#include <inttypes.h>
#endif
static void store_callback(lcb_t instance, 
                           const void *cookie,
                           lcb_storage_t operation,
                           lcb_error_t error,
                           const lcb_store_resp_t *item)
{
    if (error == LCB_SUCCESS) {
        fprintf(stderr, "STORED \"");
        fwrite(item->v.v0.key, sizeof(char), item->v.v0.nkey, stderr);
        fprintf(stderr, "\" CAS: %"PRIu64"\n", item->v.v0.cas);
    } else {
        fprintf(stderr, "STORE ERROR: %s (0x%x)\n",
                lcb_strerror(instance, error), error);
        exit(EXIT_FAILURE);
    }
    (void)cookie;
    (void)operation;
}

static void get_callback(lcb_t instance, 
                         const void *cookie, 
                         lcb_error_t error,
                         const lcb_get_resp_t *item)
{
    if (error == LCB_SUCCESS) {
        fprintf(stderr, "GOT \"");
        fwrite(item->v.v0.key, sizeof(char), item->v.v0.nkey, stderr);
        fprintf(stderr, "\" CAS: %"PRIu64" FLAGS:0x%x SIZE:%lu\n",
                item->v.v0.cas, item->v.v0.flags, (unsigned long)item->v.v0.nbytes);
        fwrite(item->v.v0.bytes, sizeof(char), item->v.v0.nbytes, stderr);
        fprintf(stderr, "\n");

    } else {
        fprintf(stderr, "GET ERROR: %s (0x%x)\n",
                lcb_strerror(instance, error), error);
    }
    (void)cookie;
}

int main(int argc, char *argv[])
{
    lcb_error_t err;
    lcb_t instance;
    struct lcb_create_st create_options;
    memset(&create_options, 0, sizeof(create_options));
    create_options.version = 3;

    create_options.v.v3.connstr = "couchbase://localhost/bucket-test";
    create_options.v.v3.passwd = "shan1123";
    create_options.v.v3.username = "fog-ws";

    err = lcb_create(&instance, &create_options);
    if (err != LCB_SUCCESS) {
        fprintf(stderr, "Failed to create libcouchbase instance: %s\n",
                lcb_strerror(NULL, err));
        return 1;
    }

    /* Initiate the connect sequence in libcouchbase */
    if ((err = lcb_connect(instance)) != LCB_SUCCESS) {
        fprintf(stderr, "Failed to initiate connect: %s\n",
                lcb_strerror(NULL, err));
        lcb_destroy(instance);
        return 1;
    }

    (void)lcb_set_get_callback(instance, get_callback);
    (void)lcb_set_store_callback(instance, store_callback);
    /* Run the event loop and wait until we've connected */
    lcb_wait(instance);
    if ((err = lcb_get_bootstrap_status(instance)) != LCB_SUCCESS) {
        fprintf(stderr, "Failed to bootstrap: %s\n", lcb_strerror(instance, err));
        lcb_destroy(instance);
        return 1;
    }
    
    {
        lcb_store_cmd_t cmd;
        const lcb_store_cmd_t *commands[1];
        commands[0] = &cmd;
        memset(&cmd, 0, sizeof(cmd));
        cmd.v.v0.operation = LCB_SET;
        cmd.v.v0.key = "foo";
        cmd.v.v0.nkey = 3;
        cmd.v.v0.bytes = "bar";
        cmd.v.v0.nbytes = 3;
        err = lcb_store(instance, NULL, 1, commands);
        if (err != LCB_SUCCESS) {
            fprintf(stderr, "Failed to store: %s\n", lcb_strerror(NULL, err));
            return 1;
        }
    }

    lcb_wait(instance);
    
    {
        lcb_get_cmd_t cmd;
        const lcb_get_cmd_t *commands[1];
        commands[0] = &cmd;
        memset(&cmd, 0, sizeof(cmd));
        cmd.v.v0.key = "foo";
        cmd.v.v0.nkey = 3;
        err = lcb_get(instance, NULL, 1, commands);
        if (err != LCB_SUCCESS) {
            fprintf(stderr, "Failed to get: %s\n", lcb_strerror(NULL, err));
            return 1;
        }
    }

    lcb_wait(instance);
    lcb_destroy(instance);

    return 0;
 }