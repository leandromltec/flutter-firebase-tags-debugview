import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconMenu extends StatefulWidget {
  final String urlImageAssets;

  IconMenu({required this.urlImageAssets});

  @override
  State<IconMenu> createState() => _IconMenuState();
}

class _IconMenuState extends State<IconMenu> {
  bool enabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: (){
          setState(() {
            enabled = !enabled;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Color(0xFFD6D6D6), spreadRadius: 1, blurRadius: 10)],
            color:  const Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(10)),
          width: 80,
          height: 70,
          
          child: SvgPicture.asset(widget.urlImageAssets)
        ),
      ),
    );
  }
}
