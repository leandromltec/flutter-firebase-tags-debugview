/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/foundation.dart';

import '../../model/icon_menu_model.dart';
import '../../model/product_model.dart';

//Interface com variáveis ValueNotifier e métodos do Presenter
abstract class ProductsPagePresenter {
  ValueNotifier<String> titlePageAppBar;
  ValueNotifier<List<IconMenuModel>> listItemsMenu;
  ValueNotifier<List<ProductModel>> listItemsProducts;
  ValueNotifier<Iterable<ProductModel>> listCurrentItemsProducts;
  ValueNotifier<ProductModel> itemSelectedProduct;
  ValueNotifier<int> itemSelectedSizeNumber;
  void getAllBrandsMenu();
  void getAllProducs();
  void getSelectedListProduct(int idBrand);
  void getSelectedProductColor(int idProduct);
  void getSelectedProductNumberSize(int idProduct);
  void init();
  void initSizeNumber();
  void dispose();
}
