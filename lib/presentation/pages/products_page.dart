/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';

import '../../strings/analytics_constants.dart';
import '../../strings/routes.dart';
import '../ui/analytics_mixin.dart';
import '../widgets/listviews.dart';
import 'home_page_presenter.dart';
import 'master_page.dart';

class ProductsPage extends StatefulWidget {
  final ProductsPagePresenter presenter;

  // ignore: use_key_in_widget_constructors
  const ProductsPage({@required this.presenter});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> with AnalyticsMixin {
  @override
  void initState() {
    super.initState();
    widget.presenter.init();
    widget.presenter.getAllBrandsMenu();
    widget.presenter.getAllProducs();
    //Registra screenView no Firebase Analytics
    screenViewRegister(
        screenRoute: Routes.productsPage +
            AnalyticsConstants.itemSelectedScreeView(
                widget.presenter.itemSelectedProduct.value.nameBrand));
  }

  @override
  void dispose() {
    super.dispose();
    widget.presenter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MasterPage(
      routePage: Routes.productsPage,
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
                    child: listViewProducts(widget.presenter),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
