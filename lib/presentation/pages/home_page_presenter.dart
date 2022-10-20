import 'package:flutter/foundation.dart';

import '../../model/icon_menu_model.dart';
import '../../model/product_model.dart';

abstract class ProductsPagePresenter {
  ValueNotifier<ProductModel> currentItem;
  ValueNotifier<List<IconMenuModel>> listItemsMenu;
  ValueNotifier<List<ProductModel>> listItemsProducts;
  ValueNotifier<Iterable<ProductModel>> listCurrentItemsProducts;
  void getAllItemsMenu();
  void getAllProducs();
  void init();
  void dispose();
}
