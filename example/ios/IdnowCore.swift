import Foundation
import IDNowSDKCore

@objc(IdnowCore)
class IdnowCore : NSObject {
  private var _resolve: RCTPromiseResolveBlock? = nil;
  private var _reject: RCTPromiseRejectBlock? = nil;
  
  @objc
  func startIdent(_ token: String, preferredLanguage: String, resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock) -> Void {
    let rootViewController = UIApplication.shared.delegate?.window??.rootViewController
    
    IDNowSDK.shared.start(token: token, preferredLanguage: preferredLanguage, fromViewController: rootViewController!, listener:{ (result: IDNowSDK.IdentResult, message: String) in
      if result == IDNowSDK.IdentResult.FINISHED {
        resolve(String(describing:result.rawValue));
      } else {
        let error = NSError(domain: message, code: result.rawValue, userInfo: nil)
        reject(String(describing:result.rawValue), message, error);
      }
    })
  }
  
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
