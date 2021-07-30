import 'package:flutter/material.dart';

import '../widgets/CustomDrawer.dart';
import '../widgets/MyAppBar.dart';

class AboutMeScreen extends StatelessWidget {
  static const pageTitle = 'About Me';
  static const routeName = '/about-me';

  AboutMeScreen({Key? key}) : super(key: key);

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
