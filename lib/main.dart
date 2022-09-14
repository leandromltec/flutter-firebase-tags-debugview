import 'package:flutter/material.dart';

import 'module/module.dart';
import 'module/module_manager.dart';
import 'module/module_manager_interface.dart';
import 'presentation/pages/home_page.dart';

void main() async {
  ModuleManagerInterface _moduleManager;
  _moduleManager = await _setup();

  runApp( MaterialApp(
      title: 'Firebase Tags Debug View (Get It)',
      debugShowCheckedModeBanner: false,
      routes: _moduleManager.routes ,
      
      home: const HomePage()
    ));
}

Future<ModuleManagerInterface> _setup() async {
  ModuleManagerInterface moduleManager = ModuleManager();
  await moduleManager.registerModules([ModuleTags()]);

  return moduleManager;
}
