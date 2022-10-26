import 'package:flutter/material.dart';
import '../../model/product_model.dart';
import '../../strings/routes.dart';

class ProductItem extends StatefulWidget {
  ProductModel product;

  ProductItem({@required this.product});

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
            child: Image.asset(widget.product.urlImageProduct),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 20, left: 20),
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
              color: const Color(0xFFFF782A),
              borderRadius: BorderRadius.circular(20)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "R\$ " +
                    widget.product.amountProduct
                        .toStringAsFixed(2)
                        .replaceAll('.', ','),
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushNamed(Routes.productSelectedPage),
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
              ),
            )
          ]),
        )
      ],
    );
  }
}
