import 'package:flutter/foundation.dart';

import '../../model/icon_menu_model.dart';
import '../../model/product_model.dart';
import '../pages/home_page_presenter.dart';

class ValueNotifierProductsPresenter implements ProductsPagePresenter {
  
  @override
  ValueNotifier<String> titlePageAppBar;

  @override
  ValueNotifier<List<IconMenuModel>> listItemsMenu;

  @override
  ValueNotifier<List<ProductModel>> listItemsProducts;

  @override
  ValueNotifier<Iterable<ProductModel>> listCurrentItemsProducts;

   @override
  ValueNotifier<ProductModel> itemSelectedProduct;

  @override
  void init() {
    titlePageAppBar = ValueNotifier("Home");
    listItemsMenu = ValueNotifier(null);
    listItemsProducts = ValueNotifier(null);
    listCurrentItemsProducts = ValueNotifier(null);
    itemSelectedProduct = ValueNotifier(null);
  }

  @override
  void dispose() {
    titlePageAppBar.dispose();
    listItemsMenu.dispose();
    listItemsProducts.dispose();
    listCurrentItemsProducts.dispose();
  }

  @override
  void getAllItemsMenu() {
    listItemsMenu.value = [
      IconMenuModel(idIBrand: 1, nameBrand: 'Nike', urlImageBand: 'assets/images/logos/logo_nike.svg'),
      IconMenuModel(idIBrand: 2, nameBrand: 'Adidas', urlImageBand: 'assets/images/logos/logo_adidas.svg'),
      IconMenuModel(idIBrand: 3, nameBrand: 'Puma', urlImageBand: 'assets/images/logos/logo_puma.svg'),
      IconMenuModel(idIBrand: 4, nameBrand: 'New Balance', urlImageBand: 'assets/images/logos/logo_new_balance.svg'),
      IconMenuModel(idIBrand: 5, nameBrand: 'Under Armour', urlImageBand: 'assets/images/logos/logo_under_armour.svg'),
     ];

     titlePageAppBar.value = listItemsMenu.value.first.nameBrand;
  }

  @override
  void getAllProducs() {
    listItemsProducts.value = [
      ProductModel(idBrand: 1, nameBrand: 'Nike', nameProduct: 'Nike Green', urlImageProduct: 'assets/images/sneakers/nike_verde.png', amountProduct: 249.90),
      ProductModel(idBrand: 1, nameBrand: 'Nike', nameProduct: 'Nike Black', urlImageProduct: 'assets/images/sneakers/nike_preto.png' , amountProduct: 249.90),
      ProductModel(idBrand: 2, nameBrand: 'Adidas', nameProduct: 'Adidas Blue', urlImageProduct: 'assets/images/sneakers/adidas_azul.png', amountProduct: 239.90),
      ProductModel(idBrand: 2, nameBrand: 'Adidas', nameProduct: 'Adidas White', urlImageProduct: 'assets/images/sneakers/adidas_branco.png', amountProduct: 239.90),
      ProductModel(idBrand: 3, nameBrand: 'Puma',nameProduct: 'Puma White', urlImageProduct: 'assets/images/sneakers/puma_branco.png', amountProduct: 299.00),
      ProductModel(idBrand: 3, nameBrand: 'Puma', nameProduct: 'Puma Red', urlImageProduct: 'assets/images/sneakers/puma_vermelho.png', amountProduct: 299.00),
      ProductModel(idBrand: 4, nameBrand: 'New Balance', nameProduct: 'New Balance Blue', urlImageProduct: 'assets/images/sneakers/tenis_new_balance_azul.png', amountProduct: 199.90),
      ProductModel(idBrand: 4, nameBrand: 'New Balance', nameProduct: 'New Balance Black', urlImageProduct:'assets/images/sneakers/tenis_preto_new_balance.png', amountProduct: 199.90),
      ProductModel(idBrand: 5, nameBrand: 'Under Armour', nameProduct: 'Under Armour Black', urlImageProduct: 'assets/images/sneakers/tenis_under_preto.png', amountProduct: 399.00),
      ProductModel(idBrand: 5, nameBrand: 'Under Armour', nameProduct: 'Under Armour Green', urlImageProduct: 'assets/images/sneakers/tenis_under_verde.png', amountProduct: 399.00),
    ];
    listCurrentItemsProducts.value =
        listItemsProducts.value.where((e) => e.idBrand == 1).toList();
  }

  @override
  void getSelectedListProduct(int idBrand) {
    listCurrentItemsProducts.value =
        listItemsProducts.value.where((e) => e.idBrand == idBrand).toList();

    titlePageAppBar.value = listCurrentItemsProducts.value.first.nameBrand;

    itemSelectedProduct.value = listCurrentItemsProducts.value.first;
  }

  @override
   void getSelectedProduct(int idProduct) {
     itemSelectedProduct.value = listCurrentItemsProducts.value.first;
  }
}
