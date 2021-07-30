import 'package:flutter/material.dart';

import '../widgets/CustomDrawer.dart';
import '../widgets/MyAppBar.dart';

class PortfoliosScreen extends StatelessWidget {
  static const pageTitle = 'Portfolios';
  static const routeName = '/portfolios';
  PortfoliosScreen({Key? key}) : super(key: key);

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
