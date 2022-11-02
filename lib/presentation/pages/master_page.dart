/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';

import '../colors/colors_pallete.dart';
import '../ui/analytics_mixin.dart';
import 'home_page_presenter.dart';

//Página padrão que já defini AppBar e recebe como parâmetro um Widget
class MasterPage extends StatefulWidget {
  final ProductsPagePresenter presenter;
  final Widget contentPage;
  final String routePage;

  // ignore: use_key_in_widget_constructors
  const MasterPage({@required this.presenter, @required this.contentPage, this.routePage});

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> with AnalyticsMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
            valueListenable: widget.presenter.titlePageAppBar,
            builder: (BuildContext context, titlePage, _) {
              return Text(titlePage, style: const TextStyle(color: ColorPalette.primaryColor),
              );
            }),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              clickRegisterEventGoBack(widget.routePage);
              Navigator.of(context).pop();},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorPalette.primaryColor,
            )),
      ),
      body: widget.contentPage,
    );
  }
}
