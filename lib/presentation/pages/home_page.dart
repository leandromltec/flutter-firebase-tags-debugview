/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';

import '../../strings/routes.dart';
import '../colors/colors_pallete.dart';
import '../ui/analytics_mixin.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AnalyticsMixin{

  @override
  void initState() {
    super.initState();
    
    screenViewRegister(screenRoute: Routes.homePage);
  }


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
                        'assets/images/background/background_splash.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: SizedBox(
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
