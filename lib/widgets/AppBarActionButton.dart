import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/HomeScreen.dart';
import '../providers/GlobalProvider.dart';

class AppBarActionButton extends StatelessWidget {
  final String? title;
  final String? routeName;

  const AppBarActionButton({
    Key? key,
    required this.title,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalProvider provider = Provider.of<GlobalProvider>(
      context,
      listen: false,
    );

    return TextButton(
      onPressed: () {
        provider.changeCurrentPage(routeName);
        Navigator.of(context).pushNamed(routeName ?? HomeScreen.routeName);
      },
      child: Text(
        title ?? "Unknown",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: provider.currentPage == routeName &&
                provider.currentPage != HomeScreen.routeName
            ? MaterialStateProperty.resolveWith(
                (states) => Colors.amber.shade700,
              )
            : null,
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        overlayColor: routeName == HomeScreen.routeName
            ? MaterialStateProperty.resolveWith(
                (states) => Colors.transparent,
              )
            : null,
      ),
    );
  }
}
