#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(IdnowCore, NSObject)
RCT_EXTERN_METHOD(
                  startIdent: (NSString *)token
                  preferredLanguage: (NSString *)preferredLanguage
                  resolve: (RCTPromiseResolveBlock)resolve
                  reject: (RCTPromiseRejectBlock)reject
                  )
@end
