import 'package:flutter/material.dart';
import 'package:flutter_firebase_tags_debugivew/injector/injector.dart';

import 'module_interface.dart';
import 'module_manager_interface.dart';
import 'dart:developer';

class ModuleManager implements ModuleManagerInterface {
  Map<String, WidgetBuilder> _routes;

  ModuleManager() {
    _routes = {};
  }

  @override
  Map<String, WidgetBuilder> get routes => _routes;

  //Registra os módulos e adiciona as rotas na lista de rotas passando para proriedades get rout
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
      log('error:' + e.toString());
    }
  }
}
