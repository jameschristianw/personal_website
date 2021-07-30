import 'package:flutter/material.dart';
import '../pages/AboutMeScreen.dart';
import '../pages/EducationAndCourseScreen.dart';
import '../pages/ExperiencesScreen.dart';
import '../pages/PortfoliosScreen.dart';
import '../widgets/AppBarActionButton.dart';

List<Widget> appBarActionList = [
  AppBarActionButton(
    title: AboutMeScreen.pageTitle,
    routeName: AboutMeScreen.routeName,
  ),
  AppBarActionButton(
    title: EducationAndCourseScreen.pageTitle,
    routeName: EducationAndCourseScreen.routeName,
  ),
  AppBarActionButton(
    title: ExperiencesScreen.pageTitle,
    routeName: ExperiencesScreen.routeName,
  ),
  AppBarActionButton(
    title: PortfoliosScreen.pageTitle,
    routeName: PortfoliosScreen.routeName,
  ),
];
