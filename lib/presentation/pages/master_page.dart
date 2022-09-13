import 'package:flutter/material.dart';
import 'home_page.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text(widget.titleAppBar)),
        body: widget.contentPage,
      ),
    );
  }
}
