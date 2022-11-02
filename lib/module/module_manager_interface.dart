/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';

import 'module_interface.dart';

//Interface para registro do módulos
abstract class ModuleManagerInterface{
  Future<void> registerModules(List<ModuleInterface> modules);
  Map<String, WidgetBuilder> get routes;
}