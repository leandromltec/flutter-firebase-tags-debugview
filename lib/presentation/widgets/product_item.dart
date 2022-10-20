
import 'package:flutter/material.dart';

import '../../model/icon_menu_model.dart';
import '../../model/product_model.dart';

class ProductItem extends StatefulWidget {
  ProductModel product;

  ProductItem({@required this.product});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        
        decoration: BoxDecoration(
          color: Color(0XFFEEEEEE),
          borderRadius: BorderRadius.circular(20)),
        child: Image.asset(widget.product.urlImageProduct),
      ),
    );
  }
}