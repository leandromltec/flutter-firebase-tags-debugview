import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../injector/injector.dart';
import '../../model/icon_menu_model.dart';
import '../../strings/analytics_constants.dart';
import '../colors/colors_pallete.dart';
import '../pages/home_page_presenter.dart';
import '../ui/analytics_mixin.dart';

class IconMenu extends StatefulWidget {
  final IconMenuModel iconMenu;

  // ignore: use_key_in_widget_constructors
  const IconMenu({@required this.iconMenu});

  @override
  State<IconMenu> createState() => _IconMenuState();
}

class _IconMenuState extends State<IconMenu> with AnalyticsMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
            //Grava o evento no clique de uma marca no menu
          clickRegisterEvent('menu-marca',
              AnalyticsConstants.clickContentType(widget.iconMenu.nameBrand));
          Injector.instance
              .get<ProductsPagePresenter>()
              .getSelectedListProduct(widget.iconMenu.idIBrand);
        },
        child: Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: ColorPalette.shadowmenuButtonColor,
                      spreadRadius: 1,
                      blurRadius: 10)
                ],
                color: ColorPalette.menuButtonColor,
                borderRadius: BorderRadius.circular(10)),
            width: 80,
            height: 70,
            child: SvgPicture.asset(widget.iconMenu.urlImageBrand)),
      ),
    );
  }
}
