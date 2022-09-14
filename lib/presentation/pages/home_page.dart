import 'package:flutter/material.dart';

import '../../strings/routes.dart';
import 'master_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MasterPage(
        titleAppBar: 'Home',
        contentPage: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: 200,
                height: 50,
                color: Colors.red,
                child: ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed(Routes.productsPage),
                    child: const Text("Redirecionar")),
              )
            ],
          ),
        ));
  }
}
