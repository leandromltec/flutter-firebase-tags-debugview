import 'dart:async';

import 'package:flutter/material.dart';

import '../injector/injector.dart';
import '../injector/services/analytics/analytics_services.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/home_page_presenter.dart';
import '../strings/routes.dart';
import 'factory.dart';
import 'module_interface.dart';

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
