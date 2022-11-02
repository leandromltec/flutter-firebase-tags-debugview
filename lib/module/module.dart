/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'dart:async';

import 'package:flutter/material.dart';

import '../injector/injector.dart';
import '../injector/services/analytics/analytics_services.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/home_page_presenter.dart';
import '../strings/routes.dart';
import 'factory.dart';
import 'module_interface.dart';

//Módulo para definição de routas de telas e registro de serviços
class ModuleTags implements ModuleInterface {
  @override
  Map<String, WidgetBuilder> routes() {
    return {
      Routes.homePage: (BuildContext context) => HomePage(),
      Routes.productsPage: (BuildContext context) => makePageProducts(),
      Routes.productSelectedPage: (BuildContext context) =>
          makePageSelectedProduct()
    };
  }

  @override
  FutureOr<void> registerServices(Injector injector) async {
    injector.registerLazySingleton<ProductsPagePresenter>(makeProducts());
    injector.registerLazySingleton(() => AnalyticsService());
  }
}
