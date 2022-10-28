import 'package:flutter/material.dart';

class ProductModel {
  int idBrand;
  int idProduct;
  String nameBrand;
  String nameProduct;
  String urlImageProduct;
  double amountProduct;
  List<int> sizesProduct;
  Color colorProduct;
  bool selectedColor;
  int selectedSizeNumber;

  ProductModel(
      {@required this.idBrand,
      @required this.idProduct,
      @required this.nameBrand,
      @required this.nameProduct,
      @required this.urlImageProduct,
      @required this.amountProduct,
      @required this.sizesProduct,
      @required this.colorProduct,
      this.selectedColor = false,
      this.selectedSizeNumber = 0});
}
