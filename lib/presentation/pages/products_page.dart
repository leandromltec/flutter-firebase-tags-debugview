

import 'package:flutter/material.dart';

import 'master_page.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({ Key? key }) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return MasterPage(
        titleAppBar: 'Produtos',
        contentPage: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: 200,
                height: 50,
                color: Colors.blue,
                
              )
            ],
          ),
        ));
  }
}