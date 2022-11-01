import 'package:flutter/material.dart';

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
  ValueNotifier<int> itemSelectedSizeNumber;

  @override
  void init() {
    titlePageAppBar = ValueNotifier("Home");
    listItemsMenu = ValueNotifier(null);
    listItemsProducts = ValueNotifier(null);
    listCurrentItemsProducts = ValueNotifier(null);
    itemSelectedProduct = ValueNotifier(null);
    itemSelectedSizeNumber = ValueNotifier(0);
  }

  @override
  void dispose() {
    titlePageAppBar.dispose();
    listItemsMenu.dispose();
    listItemsProducts.dispose();
    listCurrentItemsProducts.dispose();
    itemSelectedProduct.dispose();
  }

  @override
  void initSizeNumber() {
    itemSelectedSizeNumber = ValueNotifier(0);
  }

  @override
  void getAllBrandsMenu() {
    listItemsMenu.value = [
      IconMenuModel(
          idIBrand: 1,
          nameBrand: 'Nike',
          urlImageBrand: 'assets/images/logos/logo_nike.svg'),
      IconMenuModel(
          idIBrand: 2,
          nameBrand: 'Adidas',
          urlImageBrand: 'assets/images/logos/logo_adidas.svg'),
      IconMenuModel(
          idIBrand: 3,
          nameBrand: 'Puma',
          urlImageBrand: 'assets/images/logos/logo_puma.svg'),
      IconMenuModel(
          idIBrand: 4,
          nameBrand: 'New Balance',
          urlImageBrand: 'assets/images/logos/logo_new_balance.svg'),
      IconMenuModel(
          idIBrand: 5,
          nameBrand: 'Under Armour',
          urlImageBrand: 'assets/images/logos/logo_under_armour.svg'),
    ];

    titlePageAppBar.value = listItemsMenu.value.first.nameBrand;
  }

  @override
  void getAllProducs() {
    listItemsProducts.value = [
      ProductModel(
          idBrand: 1,
          idProduct: 10,
          nameBrand: 'Nike',
          nameProduct: 'Nike Green',
          urlImageProduct: 'assets/images/sneakers/nike_verde.png',
          amountProduct: 249.90,
          sizesProduct: [32, 34, 36, 37, 39, 40, 42, 44],
          colorProduct: Colors.green,
          colorNameProduct: 'verde',
          selectedColor: true
          ),
      ProductModel(
          idBrand: 1,
          idProduct: 20,
          nameBrand: 'Nike',
          nameProduct: 'Nike Black',
          urlImageProduct: 'assets/images/sneakers/nike_preto.png',
          amountProduct: 249.90,
          sizesProduct: [36, 37, 42],
          colorProduct: Colors.black,
          colorNameProduct: 'preto',
          ),
      ProductModel(
          idBrand: 2,
          idProduct: 30,
          nameBrand: 'Adidas',
          nameProduct: 'Adidas Blue',
          urlImageProduct: 'assets/images/sneakers/adidas_azul.png',
          amountProduct: 239.90,
          sizesProduct: [32, 34, 36, 37, 39, 40, 42, 44],
          colorProduct: Colors.blue,
          colorNameProduct: 'azul',
          selectedColor: true
          ),
      ProductModel(
          idBrand: 2,
          idProduct: 40,
          nameBrand: 'Adidas',
          nameProduct: 'Adidas White',
          urlImageProduct: 'assets/images/sneakers/adidas_branco.png',
          amountProduct: 239.90,
          sizesProduct: [36, 37, 42],
          colorProduct: Colors.white,
          colorNameProduct: 'branco',
          ),
      ProductModel(
          idBrand: 3,
          idProduct: 50,
          nameBrand: 'Puma',
          nameProduct: 'Puma White',
          urlImageProduct: 'assets/images/sneakers/puma_branco.png',
          amountProduct: 299.00,
          sizesProduct: [36, 37, 42],
          colorProduct: Colors.black,
          colorNameProduct: 'black',
          selectedColor: true
          ),
      ProductModel(
          idBrand: 3,
          idProduct: 60,
          nameBrand: 'Puma',
          nameProduct: 'Puma Red',
          urlImageProduct: 'assets/images/sneakers/puma_vermelho.png',
          amountProduct: 299.00,
          sizesProduct: [32, 34, 36, 37, 39, 40, 42, 44],
          colorProduct: Colors.red,
          colorNameProduct: 'vermelho',
          ),
      ProductModel(
          idBrand: 4,
          idProduct: 70,
          nameBrand: 'New Balance',
          nameProduct: 'New Balance Blue',
          urlImageProduct: 'assets/images/sneakers/tenis_new_balance_azul.png',
          amountProduct: 199.90,
          sizesProduct: [36, 37, 42],
          colorProduct: Colors.blue,
          colorNameProduct: 'azul',
          selectedColor: true
          ),
      ProductModel(
          idBrand: 4,
          idProduct: 80,
          nameBrand: 'New Balance',
          nameProduct: 'New Balance Black',
          urlImageProduct: 'assets/images/sneakers/tenis_preto_new_balance.png',
          amountProduct: 199.90,
          sizesProduct: [36, 37, 42],
          colorProduct: Colors.black,
          colorNameProduct: 'preto',
          ),
      ProductModel(
          idBrand: 5,
          idProduct: 90,
          nameBrand: 'Under Armour',
          nameProduct: 'Under Armour Black',
          urlImageProduct: 'assets/images/sneakers/tenis_under_preto.png',
          amountProduct: 399.00,
          sizesProduct: [36, 37, 42],
          colorProduct: Colors.black,
          colorNameProduct: 'preto',
          selectedColor: true
          ),
      ProductModel(
          idBrand: 5,
          idProduct: 100,
          nameBrand: 'Under Armour',
          nameProduct: 'Under Armour Green',
          urlImageProduct: 'assets/images/sneakers/tenis_under_verde.png',
          amountProduct: 399.00,
          sizesProduct: [32, 34, 36, 37, 39, 40, 42, 44],
          colorProduct: Colors.green,
          colorNameProduct: 'verde',
          ),
    ];

    listCurrentItemsProducts.value =
        listItemsProducts.value.where((e) => e.idBrand == 1).toList();

    itemSelectedProduct.value = listCurrentItemsProducts.value.first;
    
  }

  @override
  void getSelectedListProduct(int idBrand) {
    listCurrentItemsProducts.value =
        listItemsProducts.value.where((e) => e.idBrand == idBrand).toList();

    titlePageAppBar.value = listCurrentItemsProducts.value.first.nameBrand;

    itemSelectedProduct.value = listCurrentItemsProducts.value.first;
    
  }

  @override
  void getSelectedProductColor(int idProduct) {
    for(ProductModel itemCurrent in listCurrentItemsProducts.value){
      itemCurrent.selectedColor = false;
    }
    
    itemSelectedProduct.value = listCurrentItemsProducts.value
        .where((e) => e.idProduct == idProduct)
        .first;
    itemSelectedProduct.value.selectedColor =
        !itemSelectedProduct.value.selectedColor;
  }

  @override
  void getSelectedProductNumberSize(int numberSize) {
    itemSelectedSizeNumber.value = numberSize;
  }
}
