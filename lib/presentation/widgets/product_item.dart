import 'package:flutter/material.dart';
import 'amount_cart_shopp.dart';

import '../../strings/routes.dart';
import '../pages/home_page_presenter.dart';

class ProductItem extends StatefulWidget {
  final ProductsPagePresenter presenter;

  // ignore: use_key_in_widget_constructors
  const ProductItem({@required this.presenter});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
                color: const Color(0XFFEEEEEE),
                borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
                widget.presenter.itemSelectedProduct.value.urlImageProduct),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: const Color(0xFFFF782A),
                borderRadius: BorderRadius.circular(20)),
            child: AmountCartShopp(
              presenter: widget.presenter,
              onTapCartShopp: () {
                Navigator.of(context).pushNamed(Routes.productSelectedPage);
              },
            ))
      ],
    );
  }
}
