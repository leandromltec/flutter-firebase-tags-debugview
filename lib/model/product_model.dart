import 'package:flutter/material.dart';

class ProductModel {
  int idBrand;
  String nameBrand;
  String nameProduct;
  String urlImageProduct;
  double amountProduct;

  ProductModel(
      {@required this.idBrand,
      @required this.nameBrand,
      @required this.nameProduct,
      @required this.urlImageProduct,
      @required this.amountProduct
      });
}
