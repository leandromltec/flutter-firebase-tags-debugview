import 'package:flutter/material.dart';
import 'package:flutter_firebase_tags_debugivew/strings/analytics_constants.dart';

import '../../injector/injector.dart';
import '../../model/product_model.dart';
import '../colors/colors_pallete.dart';
import '../pages/home_page_presenter.dart';
import '../ui/analytics_mixin.dart';

class ButtonColorProduct extends StatefulWidget {
  ProductModel itemProduct;

  ButtonColorProduct({this.itemProduct});

  @override
  State<ButtonColorProduct> createState() => _ButtonColorProductState();
}

class _ButtonColorProductState extends State<ButtonColorProduct>
    with AnalyticsMixin {
  @override
  void initState() {
    super.initState();
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
      child: Container(
          width: 30,
          height: 30,
          child: ElevatedButton(
            onPressed: () {
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
