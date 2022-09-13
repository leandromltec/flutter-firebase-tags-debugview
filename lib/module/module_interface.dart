

import 'package:flutter/material.dart';

import '../injector/injector.dart';

abstract class ModuleInterface{
  Map<String, WidgetBuilder> routes();
  registerServices(Injector injector);
}