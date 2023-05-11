import Flutter
import UIKit

public class FlutterToastPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_toast_plugin", binaryMessenger: registrar.messenger())
    let instance = FlutterToastPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      if(call.method.elementsEqual("showToast")){
        if let args = call.arguments as? NSDictionary {
               // Extract arguments from args dictionary
               let message = args["msg"] as? String ?? ""
           UIAlertView(title:"", message: message, delegate : nil, cancelButtonTitle: "OK").show()
             } else {
               result(FlutterError(code: "INVALID_ARGUMENTS", message: "Invalid arguments", details: nil))
             }

      }
      result("iOS " + UIDevice.current.systemVersion)
  }
}
