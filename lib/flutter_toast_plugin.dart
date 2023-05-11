
import 'flutter_toast_plugin_platform_interface.dart';

class FlutterToastPlugin {

  Future<String?> getPlatformVersion() {
    return FlutterToastPluginPlatform.instance.getPlatformVersion();
  }

  // let arguments = call.arguments as? NSDictionary
  // let message = arguments["msg"] as? String

  Future<String?> showToast(String message) {
    Map<String, dynamic> args = {};
    args.putIfAbsent("msg", () => message);
    return FlutterToastPluginPlatform.instance.showToast(args);
  }

}
