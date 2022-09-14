import 'package:flutter/material.dart';

import '../injector/injector.dart';
import '../interface/pages_interface.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/products_page.dart';
import '../strings/routes.dart';
import 'module_interface.dart';

class ModuleTags implements ModuleInterface {
  @override
  Map<String, WidgetBuilder> routes() {
    return {
      Routes.homePage: (BuildContext context) => const HomePage(),
      Routes.productsPage: (BuildContext context) => const ProductsPage(),
    };
  }

  @override
  void registerServices(Injector injector) {
    injector.registerSingleton(PagesInterface());
    injector.get<PagesInterface>();
  }
}
