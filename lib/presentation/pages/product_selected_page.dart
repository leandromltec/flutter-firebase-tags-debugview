import 'package:flutter/material.dart';

import '../widgets/amount_cart_shopp.dart';
import '../widgets/listviews.dart';
import '../widgets/title_session.dart';
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TitleSession(textTitle: "Tamanhos:"),
                ),
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TitleSession(textTitle: "Cores:"),
                ),
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
              const SizedBox(
                height: 20,
              ),
              AmountCartShopp(
                presenter: widget.presenter,
              )
            ],
          );
        },
      ),
    );
  }
}
