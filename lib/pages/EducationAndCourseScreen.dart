import 'package:flutter/material.dart';

import '../widgets/CustomDrawer.dart';
import '../widgets/MyAppBar.dart';

class EducationAndCourseScreen extends StatelessWidget {
  static const pageTitle = 'Educations & Courses';
  static const routeName = '/education-and-course';
  EducationAndCourseScreen({Key? key}) : super(key: key);

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
