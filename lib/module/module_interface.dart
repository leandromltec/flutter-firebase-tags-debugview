import 'package:flutter/material.dart';

import '../injector/injector.dart';

//Interface responsável por possuir as routas para telas e registro de singleton
abstract class ModuleInterface{
  Map<String, WidgetBuilder> routes();
  registerServices(Injector injector);
}