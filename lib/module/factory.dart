import 'package:flutter_firebase_tags_debugivew/injector/injector.dart';
import 'package:flutter_firebase_tags_debugivew/presentation/pages/home_page_presenter.dart';

import '../presentation/pages/product_selected_page.dart';
import '../presentation/pages/products_page.dart';
import '../presentation/value_notifier/value_notifier_home_presenter.dart';

makeProducts() => ValueNotifierProductsPresenter();

makePageProducts() => ProductsPage(presenter: Injector.instance.get<ProductsPagePresenter>(),);

makePageSelectedProduct() => ProductSelectedPage(presenter: Injector.instance.get<ProductsPagePresenter>(),);