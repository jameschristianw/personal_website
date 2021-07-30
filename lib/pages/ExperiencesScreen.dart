import 'package:flutter/material.dart';

import '../widgets/CustomDrawer.dart';
import '../widgets/MyAppBar.dart';

class ExperiencesScreen extends StatelessWidget {
  static const pageTitle = 'Experiences';
  static const routeName = '/experience';
  ExperiencesScreen({Key? key}) : super(key: key);
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
