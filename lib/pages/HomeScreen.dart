import 'package:flutter/material.dart';

import '../widgets/MyAppBar.dart';
import '../widgets/CustomDrawer.dart';

class HomeScreen extends StatelessWidget {
  static const pageTitle = "Home";
  static const routeName = '/';

  HomeScreen({Key? key}) : super(key: key);

  bool showDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        color: Colors.white,
      ),
      drawer: showDrawer ? CustomDrawer() : null,
    );
  }
}
