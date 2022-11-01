import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'injector/services/analytics/analytics_services.dart';
import 'module/module.dart';
import 'module/module_manager.dart';
import 'module/module_manager_interface.dart';
import 'presentation/pages/home_page.dart';

void main() async {
  //Interage com o mecanimos Flutter e chama o código nativo para permitir iniciar o Firebase
  WidgetsFlutterBinding.ensureInitialized();
  //Inicia o Firebase conforme a plataforma atual
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  ModuleManagerInterface _moduleManager;
  _moduleManager = await _setup();

  runApp(MaterialApp(
      title: 'Firebase Tags Debug View',
      debugShowCheckedModeBanner: false,
      routes: _moduleManager.routes,
      //Observa a navegação para o Analytics
      navigatorObservers: [AnalyticsService().getAnalyticsObserver()],
      home: HomePage()));
}
//Inicia os módulos do app
Future<ModuleManagerInterface> _setup() async {
  ModuleManagerInterface moduleManager = ModuleManager();
  await moduleManager.registerModules([ModuleTags()]);

  return moduleManager;
}
