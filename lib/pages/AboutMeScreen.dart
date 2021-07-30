import 'package:flutter/material.dart';
import 'package:personal_website/constants/AppBarActionList.dart';
import 'package:personal_website/widgets/AppBarActionButton.dart';
import 'package:personal_website/widgets/CustomDrawer.dart';

import 'HomeScreen.dart';

class AboutMeScreen extends StatelessWidget {
  static const pageTitle = 'About Me';
  static const routeName = '/about-me';

  AboutMeScreen({Key? key}) : super(key: key);

  bool showDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        title: AppBarActionButton(
          title: HomeScreen.pageTitle,
          routeName: HomeScreen.routeName,
        ),
        actions: appBarActionList,
      ),
      body: Container(
        color: Colors.white,
      ),
      drawer: showDrawer ? CustomDrawer() : null,
    );
  }
}
