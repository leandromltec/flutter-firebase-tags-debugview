import 'package:flutter/foundation.dart';

import '../../model/icon_menu_model.dart';
import '../../model/product_model.dart';

abstract class ProductsPagePresenter {
  ValueNotifier<String> titlePageAppBar;
  ValueNotifier<List<IconMenuModel>> listItemsMenu;
  ValueNotifier<List<ProductModel>> listItemsProducts;
  ValueNotifier<Iterable<ProductModel>> listCurrentItemsProducts;
  ValueNotifier<ProductModel> itemSelectedProduct;
  void getAllItemsMenu();
  void getAllProducs();
  void getSelectedListProduct(int idBrand);
  void getSelectedProduct(int idProduct);
  void init();
  void dispose();
}
