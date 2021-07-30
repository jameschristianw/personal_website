import 'package:flutter/material.dart';
import 'package:personal_website/pages/AboutMeScreen.dart';
import 'package:personal_website/pages/EducationAndCourseScreen.dart';
import 'package:personal_website/pages/ExperiencesScreen.dart';
import 'package:personal_website/pages/PortfoliosScreen.dart';
import 'package:personal_website/widgets/AppBarActionButton.dart';

import '../widgets/CustomDrawer.dart';
import '../constants/AppBarActionList.dart';

class HomeScreen extends StatelessWidget {
  static const pageTitle = "Home";
  static const routeName = '/';

  HomeScreen({Key? key}) : super(key: key);

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
