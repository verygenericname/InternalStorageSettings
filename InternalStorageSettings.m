#import <Foundation/Foundation.h>
#import "fishhook/fishhook.h"

static BOOL (*orig_STStorageIsInternalInstall)(void);
static BOOL hooked_STStorageIsInternalInstall(void) {
    return true;
}

__attribute__((constructor)) static void init(void) {
    struct rebinding rebindings[1] = {
        {"STStorageIsInternalInstall", hooked_STStorageIsInternalInstall, (void *)&orig_STStorageIsInternalInstall}
    };

    rebind_symbols(rebindings, 1);
}
