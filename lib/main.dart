import 'package:flutter/material.dart';
import 'package:personal_website/pages/AboutMeScreen.dart';
import 'package:personal_website/pages/EducationAndCourseScreen.dart';
import 'package:personal_website/pages/ExperiencesScreen.dart';
import 'package:personal_website/pages/HomeScreen.dart';
import 'package:personal_website/pages/PortfoliosScreen.dart';
import 'package:personal_website/providers/GlobalProvider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GlobalProvider(),
      child: MaterialApp(
        title: 'Welcome to my website',
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          textTheme: TextTheme(headline1: TextStyle(color: Colors.white)),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              padding: MaterialStateProperty.resolveWith(
                (states) => EdgeInsets.symmetric(horizontal: 20),
              ),
              textStyle: MaterialStateProperty.resolveWith(
                (states) => TextStyle(
                  color: Colors.white,
                  // fontSize: 50,
                ),
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          AboutMeScreen.routeName: (context) => AboutMeScreen(),
          EducationAndCourseScreen.routeName: (context) =>
              EducationAndCourseScreen(),
          ExperiencesScreen.routeName: (context) => ExperiencesScreen(),
          PortfoliosScreen.routeName: (context) => PortfoliosScreen(),
        },
      ),
    );
  }
}
