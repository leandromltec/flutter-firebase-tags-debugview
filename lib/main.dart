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
      routes: _moduleManager.routes ,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage()
    ));
}

Future<ModuleManagerInterface> _setup() async {
  ModuleManagerInterface moduleManager = ModuleManager();
  await moduleManager.registerModules([ModuleTags()]);

  return moduleManager;
}
