import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_tags_debugivew/module/factory.dart';
import 'package:flutter_firebase_tags_debugivew/presentation/pages/home_page_presenter.dart';

import '../injector/injector.dart';
import '../presentation/pages/home_page.dart';
import '../strings/routes.dart';
import 'module_interface.dart';



class ModuleTags implements ModuleInterface {
  @override
  Map<String, WidgetBuilder> routes() {
    return {
      Routes.homePage: (BuildContext context) => HomePage(),
      Routes.productsPage: (BuildContext context) =>  makePageProducts(),
    };
  }

  @override
  FutureOr<void> registerServices(Injector injector) async{
    injector.registerLazySingleton<ProductsPagePresenter>(makeProducts());
  }
}
