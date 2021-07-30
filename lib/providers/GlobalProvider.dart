import 'package:flutter/cupertino.dart';

import '../pages/HomeScreen.dart';

class GlobalProvider with ChangeNotifier {
  String _currentPage = HomeScreen.routeName;

  String get currentPage => _currentPage;

  changeCurrentPage(page) {
    _currentPage = page;
    notifyListeners();
  }
}
