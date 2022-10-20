import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter_firebase_tags_debugivew/model/icon_menu_model.dart';

import '../../model/product_model.dart';
import '../pages/home_page_presenter.dart';

class ValueNotifierProductsPresenter implements ProductsPagePresenter {
  @override
  ValueNotifier<ProductModel> currentItem;

  @override
  ValueNotifier<List<IconMenuModel>> listItemsMenu;

  @override
  ValueNotifier<List<ProductModel>> listItemsProducts;

  @override
  ValueNotifier<Iterable<ProductModel>> listCurrentItemsProducts;

  @override
  void init() {
    currentItem = ValueNotifier(null);
    listItemsMenu = ValueNotifier(null);
    listItemsProducts = ValueNotifier(null);
    listCurrentItemsProducts = ValueNotifier(null);
  }

  @override
  void dispose() {
    listItemsMenu.dispose();
  }

  @override
  void getAllItemsMenu() {
   
    listItemsMenu.value = [
      IconMenuModel(idItem: 1, urlImage: 'assets/images/logos/logo_nike.svg'),
      IconMenuModel(idItem: 2, urlImage: 'assets/images/logos/logo_adidas.svg'),
      IconMenuModel(idItem: 3, urlImage: 'assets/images/logos/logo_puma.svg'),
      IconMenuModel(
          idItem: 4, urlImage: 'assets/images/logos/logo_under_armour.svg'),
      IconMenuModel(idItem: 5, urlImage: 'assets/images/logos/logo_new_balance.svg')
    ];

    
  }

   @override
  void getAllProducs() {
   
    listItemsProducts.value = [
      ProductModel(idBrand: 1, nameProduct: 'Nike', urlImageProduct: 'assets/images/sneakers/nike_verde.png'),
      ProductModel(idBrand: 1,nameProduct: 'Nike', urlImageProduct: 'assets/images/sneakers/nike_preto.png'),
      ProductModel(idBrand: 2,nameProduct: 'Adidas', urlImageProduct: 'assets/images/sneakers/adidas_azul.png'),
      ProductModel(idBrand: 2,nameProduct: 'Adidas', urlImageProduct: 'assets/images/sneakers/adidas_branco.png'),
      ProductModel(idBrand: 3,nameProduct: 'Puma', urlImageProduct: 'assets/images/sneakers/puma_branco.png'),
      ProductModel(idBrand: 3,nameProduct: 'Puma', urlImageProduct: 'assets/images/sneakers/puma_vermelho.png'),
      ProductModel(idBrand: 4, nameProduct: 'New Balance', urlImageProduct: 'assets/images/sneakers/tenis_new_balance_azul.png'),
      ProductModel(idBrand: 4,nameProduct: 'New Balance', urlImageProduct: 'assets/images/sneakers/tenis_preto_new_balance_azul.png'),
      ProductModel(idBrand: 5,nameProduct: 'Under Armour', urlImageProduct: 'assets/images/sneakers/nike_verde.png'),
      ProductModel(idBrand: 5,nameProduct: 'Under Armour', urlImageProduct: 'assets/images/sneakers/tenis_under_preto.png'),
      
      
    ];

    listCurrentItemsProducts.value = listItemsProducts.value.where((e) => e.idBrand == 1).toList();

     
  }
}
