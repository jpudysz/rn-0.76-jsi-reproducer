#import "RCTNativeLocalStorage.h"

@implementation RCTNativeLocalStorage

using namespace facebook;

RCT_EXPORT_MODULE(NativeLocalStorage)

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
 return std::make_shared<facebook::react::NativeLocalStorageSpecJSI>(params);
}

- (NSString *)getString:(NSString *)key {
  return [NSUserDefaults.standardUserDefaults stringForKey:key];
}

- (void)setString:(NSString *)value key:(NSString *)key {
  [NSUserDefaults.standardUserDefaults setObject:value forKey:key];
}

RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(install) {
    RCTBridge *bridge = self.bridge;
    
    if (bridge == nullptr) {
        return @false;
    }


    jsi::Runtime* rt = reinterpret_cast<jsi::Runtime*>(bridge.runtime);
  
    auto throwJSIFn = jsi::Function::createFromHostFunction(*rt, jsi::PropNameID::forUtf8(*rt, "throwJSIError"), 0, [](jsi::Runtime &rt, const jsi::Value &thisVal, const jsi::Value *arguments, size_t count){
       throw jsi::JSError(rt, "This is JSI error!");
      
       return jsi::Value::undefined();
    });
    
    rt->global().setProperty(*rt, "throwJSIError", std::move(throwJSIFn));

    return @true;
}

@end
