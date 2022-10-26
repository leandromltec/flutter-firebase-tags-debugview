import 'package:flutter/material.dart';

import 'home_page_presenter.dart';

class MasterPage extends StatefulWidget {
  final ProductsPagePresenter presenter;
  final Widget contentPage;

  MasterPage({@required this.presenter, @required this.contentPage});

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
            valueListenable: widget.presenter.titlePageAppBar,
            builder: (BuildContext context, titlePage, _) {
              return Text(titlePage, style: const TextStyle(color: Color(0xFFFF782A)),
              );
            }),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFFF782A),
            )),
      ),
      body: widget.contentPage,
    );
  }
}
