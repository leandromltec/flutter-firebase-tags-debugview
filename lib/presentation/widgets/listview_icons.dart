import 'package:flutter/material.dart';

import 'icon_menu.dart';

Widget listViewProducts() {
  return ListView(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    children: [
     IconMenu(urlImageAssets: 'assets/images/logos/logo_nike.svg'),
     IconMenu(urlImageAssets: 'assets/images/logos/logo_adidas.svg'),
     IconMenu(urlImageAssets: 'assets/images/logos/logo_puma.svg'),
     IconMenu(urlImageAssets: 'assets/images/logos/logo_under_armour.svg'),
     IconMenu(urlImageAssets: 'assets/images/logos/logo_new_balance.svg')
    ],
  
  );
}
