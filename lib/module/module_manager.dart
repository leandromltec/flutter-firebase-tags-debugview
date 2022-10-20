import 'package:flutter/material.dart';
import 'package:flutter_firebase_tags_debugivew/injector/injector.dart';

import 'module_interface.dart';
import 'module_manager_interface.dart';

class ModuleManager implements ModuleManagerInterface {
   Map<String, WidgetBuilder> _routes;

  ModuleManager() {
    _routes = {};
  }
  @override
  Map<String, WidgetBuilder> get routes => _routes;

  @override
  Future<void> registerModules(List<ModuleInterface> modules) async {
    try {
      for (ModuleInterface module in modules) {
        await module.registerServices(Injector.instance);
        if (module.routes() != null) {
          _routes.addAll(module.routes());
        }
      }
    } catch (e) {
      print("error: " + e.toString());
    }
  }
}
