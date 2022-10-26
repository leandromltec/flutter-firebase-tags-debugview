import 'package:flutter/material.dart';
import 'package:flutter_firebase_tags_debugivew/presentation/widgets/product_item.dart';

import '../../model/icon_menu_model.dart';
import '../../model/product_model.dart';
import 'icon_menu.dart';

Widget listViewMenuBrands(List<IconMenuModel> listItems) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        return IconMenu(iconMenu: listItems[index]);
      });
}


Widget listViewProducts(List<ProductModel> listItemProducts) {
  return ListView.builder(
    scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (context, index) {
         return ProductItem(product: listItemProducts[index]);
        
      });
}