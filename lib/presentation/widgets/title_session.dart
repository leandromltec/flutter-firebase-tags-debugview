import 'package:flutter/material.dart';
import '../colors/colors_pallete.dart';

class TitleSession extends StatelessWidget {
  String textTitle;

  TitleSession({@required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Text(textTitle,
      style: const TextStyle(fontWeight: FontWeight.bold, color: ColorPalette.fontBlackColor),
    );
  }
}
