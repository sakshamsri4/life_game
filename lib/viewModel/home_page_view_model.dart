import 'package:flutter/cupertino.dart';

class HomePageViewModel with ChangeNotifier {
  int selectedIndex = 0;

  int getSelectedIndex() {
    return selectedIndex;
  }

  void setIndex(int value) {
    selectedIndex = value;
    notifyListeners();
  }
}
