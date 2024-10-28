#import <Foundation/Foundation.h>
#import <NativeLocalStorageSpec/NativeLocalStorageSpec.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

NS_ASSUME_NONNULL_BEGIN

@interface RCTBridge (BridgeWithRuntime)

- (void *)runtime;

@end

@interface RCTNativeLocalStorage : RCTEventEmitter<RCTBridgeModule>

@end

NS_ASSUME_NONNULL_END
