import 'package:flutter/material.dart';

import '../../injector/injector.dart';
import '../../model/icon_menu_model.dart';
import '../../model/product_model.dart';
import '../pages/home_page_presenter.dart';
import 'btn_color.dart';
import 'icon_menu.dart';
import 'number_size_product.dart';
import 'product_item.dart';

Widget listViewMenuBrands(List<IconMenuModel> listItems) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        return IconMenu(iconMenu: listItems[index]);
      });
}

Widget listViewProducts(ProductsPagePresenter listItemProducts) {
  return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (context, index) {
        return ProductItem(presenter: listItemProducts);
      });
}

Widget listViewProductsSize(List<int> listItemsNumberSizeProduct,
    ProductsPagePresenter presenterProduct) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: listItemsNumberSizeProduct.length,
      itemBuilder: (context, index) {
        return NumberSizeProduct(
          numberSize: listItemsNumberSizeProduct[index],
          onTapNumberSize: () {
            Injector.instance
                .get<ProductsPagePresenter>()
                .getSelectedProductNumberSize(
                    listItemsNumberSizeProduct[index]);
          },
          presenter: presenterProduct,
        );
      });
}

Widget listViewProductsColors(List<ProductModel> listItemsColors) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: listItemsColors.length,
      itemBuilder: (context, index) {
        return ButtonColorProduct(itemProduct: listItemsColors[index]);
      });
}
