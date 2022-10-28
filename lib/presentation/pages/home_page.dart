import 'package:flutter/material.dart';

import '../../strings/routes.dart';
import '../colors/colors_pallete.dart';
import 'home_page_presenter.dart';
import 'master_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/background/background_nike.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              width: 500,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(ColorPalette.primaryColor)),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Routes.productsPage),
                  child: const Text(
                    "Entrar",
                    style: TextStyle(color: ColorPalette.fontWhiteColor),
                  )),
            ),
          ),
            
        ],
      ),
    );
  }
}
