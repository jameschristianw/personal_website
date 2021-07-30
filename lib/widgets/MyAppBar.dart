import 'package:flutter/material.dart';

import '../constants/AppBarActionList.dart';
import '../pages/HomeScreen.dart';
import './AppBarActionButton.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.amber,
      title: AppBarActionButton(
        title: HomeScreen.pageTitle,
        routeName: HomeScreen.routeName,
      ),
      actions: appBarActionList,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
