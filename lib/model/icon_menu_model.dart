/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';

//Model para ícones do menu principal relacionado as marcas
class IconMenuModel {
  int idIBrand;
  String nameBrand;
  String urlImageBrand;

  IconMenuModel(
      {@required this.idIBrand,
      @required this.nameBrand,
      @required this.urlImageBrand});
}
