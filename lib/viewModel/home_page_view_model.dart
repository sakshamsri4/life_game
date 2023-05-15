import 'package:flutter/cupertino.dart';

class HomePageViewModel with ChangeNotifier
{
  int selectedIndex=0;

  void setIndex(int value)
  {
    selectedIndex=value;
    notifyListeners();
  }
}