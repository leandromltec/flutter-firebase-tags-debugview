import 'package:flutter/material.dart';

class MasterPage extends StatefulWidget {
  final String titleAppBar;
  final Widget contentPage;

  MasterPage({required this.titleAppBar, required this.contentPage});

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titleAppBar),
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
