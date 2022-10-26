import 'package:flutter/material.dart';

import '../../model/product_model.dart';
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
              Row(children: [
                Text('Cores: '),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    //fixedSize: const Size(4, 4),
                    shape: const CircleBorder(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    //fixedSize: const Size(4, 4),
                    shape: const CircleBorder(),
                  ),
                ),
              ]),
            ],
          );
        },
      ),
    );
  }
}
