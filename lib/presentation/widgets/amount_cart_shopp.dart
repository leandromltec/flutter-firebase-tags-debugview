/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';

import '../colors/colors_pallete.dart';
import '../pages/home_page_presenter.dart';

class AmountCartShopp extends StatefulWidget {
  final ProductsPagePresenter presenter;
  final Function onTapCartShopp;

  const AmountCartShopp({@required this.presenter, this.onTapCartShopp});

  @override
  State<AmountCartShopp> createState() => _AmountCartShoppState();
}

class _AmountCartShoppState extends State<AmountCartShopp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: ColorPalette.primaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "R\$ " +
                widget.presenter.itemSelectedProduct.value.amountProduct
                    .toStringAsFixed(2)
                    .replaceAll('.', ','),
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorPalette.fontWhiteColor),
          ),
        ),
        Container(
          height: 40,
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: ColorPalette.fontWhiteColor,
              borderRadius: BorderRadius.circular(20)),
          child: GestureDetector(
            onTap: () {
              widget.onTapCartShopp();
            },
            child: Row(
              children: [
                const Text("Comprar",
                    style:  TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                const Icon(
                  Icons.shopping_cart,
                  size: 25,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
