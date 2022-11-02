/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';
import '../colors/colors_pallete.dart';

class TitleSession extends StatelessWidget {
  final String textTitle;

  // ignore: use_key_in_widget_constructors
  const TitleSession({@required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Text(textTitle,
      style: const TextStyle(fontWeight: FontWeight.bold, color: ColorPalette.fontBlackColor),
    );
  }
}
