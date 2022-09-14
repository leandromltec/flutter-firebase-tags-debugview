import 'package:flutter/material.dart';

import '../widgets/listview_icons.dart';
import 'master_page.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return MasterPage(
        titleAppBar: 'Produtos',
        contentPage: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  height: 70,
                  child: listViewProducts()),
            ],
          ),
        ));
  }
}
