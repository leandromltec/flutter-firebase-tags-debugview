/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';

import '../../injector/injector.dart';
import '../../model/product_model.dart';
import '../../strings/analytics_constants.dart';
import '../colors/colors_pallete.dart';
import '../pages/home_page_presenter.dart';
import '../ui/analytics_mixin.dart';

class ButtonColorProduct extends StatefulWidget {
  final ProductModel itemProduct;

  // ignore: use_key_in_widget_constructors
  const ButtonColorProduct({this.itemProduct});

  @override
  State<ButtonColorProduct> createState() => _ButtonColorProductState();
}

class _ButtonColorProductState extends State<ButtonColorProduct>
    with AnalyticsMixin {
  @override
  void initState() {
    super.initState();
     //Grava o evento ao carregar a tela da cor já selecionada (cor padrão)
    if(widget.itemProduct.selectedColor){
    clickRegisterEvent(
        'menu-cor',
        AnalyticsConstants.clickContentType(
            "cor-" + widget.itemProduct.colorNameProduct));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
          width: 30,
          height: 30,
          child: ElevatedButton(
            child: null,
            onPressed: () {
              //Grava o evento no clique de uma cor selecionada
              clickRegisterEvent(
                  'menu-cor',
                  AnalyticsConstants.clickContentType(
                      "cor-" + widget.itemProduct.colorNameProduct));

              Injector.instance
                  .get<ProductsPagePresenter>()
                  .getSelectedProductColor(widget.itemProduct.idProduct);
            },
            style: ElevatedButton.styleFrom(
              primary: widget.itemProduct.colorProduct,
              shape: CircleBorder(
                  side: BorderSide(
                      width: 3,
                      color: widget.itemProduct.selectedColor
                          ? ColorPalette.primaryColor
                          : ColorPalette.fontWhiteColor)),
            ),
          )),
    );
  }
}
