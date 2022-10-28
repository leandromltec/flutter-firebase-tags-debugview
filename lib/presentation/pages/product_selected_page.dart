import 'package:flutter/material.dart';

import '../colors/colors_pallete.dart';
import '../widgets/listviews.dart';
import 'home_page_presenter.dart';
import 'master_page.dart';

class ProductSelectedPage extends StatefulWidget {
  final ProductsPagePresenter presenter;

  ProductSelectedPage({@required this.presenter});

  @override
  State<ProductSelectedPage> createState() => _ProductSelectedPageState();
}

class _ProductSelectedPageState extends State<ProductSelectedPage> {
  @override
  void initState() {
    super.initState();
    widget.presenter.initSizeNumber();
  }

  @override
  Widget build(BuildContext context) {
    return MasterPage(
      presenter: widget.presenter,
      contentPage: ValueListenableBuilder(
        valueListenable: widget.presenter.itemSelectedProduct,
        builder: (_, itemSelected, __) {
          return Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                    color: const Color(0XFFEEEEEE),
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                    widget.presenter.itemSelectedProduct.value.urlImageProduct),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Tamanhos:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: listViewProductsSize(
                        widget.presenter.itemSelectedProduct.value.sizesProduct,
                        widget.presenter)),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Cores: ',
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Expanded(
                      child: listViewProductsColors(
                          widget.presenter.listCurrentItemsProducts.value),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: ColorPalette.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "R\$ " +
                              widget.presenter.itemSelectedProduct.value
                                  .amountProduct
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
                        child: Row(
                          children: [
                            const Text("Comprar",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            const Icon(
                              Icons.shopping_cart,
                              size: 25,
                            ),
                          ],
                        ),
                      )
                    ]),
              )
            ],
          );
        },
      ),
    );
  }
}
