#include "include/flutter_toast_plugin/flutter_toast_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_toast_plugin.h"

void FlutterToastPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_toast_plugin::FlutterToastPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
