/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';

import '../../strings/analytics_constants.dart';
import '../colors/colors_pallete.dart';
import '../pages/home_page_presenter.dart';
import '../ui/analytics_mixin.dart';

class NumberSizeProduct extends StatefulWidget {
  final int numberSize;
  final Function onTapNumberSize;
  final ProductsPagePresenter presenter;

  // ignore: use_key_in_widget_constructors
  const NumberSizeProduct(
      {this.numberSize, this.onTapNumberSize, this.presenter});

  @override
  State<NumberSizeProduct> createState() => _NumberSizeProductState();
}

class _NumberSizeProductState extends State<NumberSizeProduct>
    with AnalyticsMixin {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: widget.presenter.itemSelectedSizeNumber,
        builder: (BuildContext context, item, _) {
          return InkWell(
            onTap: () {
               //Grava o evento no clique de um tamanho selecionado
              clickRegisterEvent(
                  'menu-tamamho',
                  AnalyticsConstants.clickContentType(
                      "tamanho-" + widget.numberSize.toString()));
              widget.onTapNumberSize();
            },
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 45,
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: widget.presenter.itemSelectedSizeNumber.value ==
                            widget.numberSize
                        ? ColorPalette.primaryColor
                        : const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  widget.numberSize.toString(),
                  style: TextStyle(
                      color: widget.presenter.itemSelectedSizeNumber.value ==
                              widget.numberSize
                          ? ColorPalette.fontWhiteColor
                          : ColorPalette.fontBlackColor),
                ),
              ),
            ),
          );
        });
  }
}
