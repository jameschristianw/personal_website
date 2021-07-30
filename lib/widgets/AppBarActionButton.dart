import 'package:flutter/material.dart';
import 'package:personal_website/pages/HomeScreen.dart';
import 'package:personal_website/providers/GlobalProvider.dart';
import 'package:provider/provider.dart';

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
      style: provider.currentPage == routeName &&
              provider.currentPage != HomeScreen.routeName
          ? ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.amber.shade700,
              ),
              shape: MaterialStateProperty.resolveWith(
                (states) => RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ))
          : null,
    );
  }
}
