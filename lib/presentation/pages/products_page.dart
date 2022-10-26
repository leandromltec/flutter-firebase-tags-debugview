import 'package:flutter/material.dart';
import 'package:flutter_firebase_tags_debugivew/injector/injector.dart';

import '../widgets/listview_icons.dart';
import 'home_page_presenter.dart';
import 'master_page.dart';

class ProductsPage extends StatefulWidget {
  final ProductsPagePresenter presenter;

  ProductsPage({@required this.presenter});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    super.initState();
    widget.presenter.init();
    widget.presenter.getAllItemsMenu();
    widget.presenter.getAllProducs();
  }

  @override
  void dispose() {
    super.dispose();
    widget.presenter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MasterPage(
      presenter: widget.presenter,
      contentPage: SingleChildScrollView(
        child: Column(
          children: [
            ValueListenableBuilder(
                valueListenable: widget.presenter.listItemsMenu,
                builder: (BuildContext context, list, _) {
                  return Container(
                      margin: const EdgeInsets.all(20),
                      height: 70,
                      child: Expanded(child: listViewMenuBrands(list)));
                }),
            ValueListenableBuilder(
                valueListenable: widget.presenter.listCurrentItemsProducts,
                builder: (BuildContext context, listCurrent, _) {
                  return Container(
                    child: listViewProducts(listCurrent),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
