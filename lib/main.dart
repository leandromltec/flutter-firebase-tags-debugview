import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_tags_debugivew/firebase_options.dart';

import 'injector/services/analytics/analytics_services.dart';
import 'module/module.dart';
import 'module/module_manager.dart';
import 'module/module_manager_interface.dart';
import 'presentation/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  ModuleManagerInterface _moduleManager;
  _moduleManager = await _setup();

  runApp(MaterialApp(
      title: 'Firebase Tags Debug View',
      debugShowCheckedModeBanner: false,
      routes: _moduleManager.routes,
      navigatorObservers: [AnalyticsService().getAnalyticsObserver()],
      home: HomePage()));
}

Future<ModuleManagerInterface> _setup() async {
  ModuleManagerInterface moduleManager = ModuleManager();
  await moduleManager.registerModules([ModuleTags()]);

  return moduleManager;
}
