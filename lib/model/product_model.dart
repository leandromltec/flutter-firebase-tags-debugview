/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';

//Model para os produtos
class ProductModel {
  int idBrand;
  int idProduct;
  String nameBrand;
  String nameProduct;
  String urlImageProduct;
  double amountProduct;
  List<int> sizesProduct;
  Color colorProduct;
  String colorNameProduct;
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
      @required this.colorNameProduct,
      this.selectedColor = false,
      this.selectedSizeNumber = 0});
}
