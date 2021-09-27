import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  bool darkTheme = false;
  String themeName = 'Dark theme';
  changeThemeMode(bool value) async {
    darkTheme = value;
    if (themeName == 'Dark theme') {
      themeName = "Light theme";
    } else {
      themeName = 'Dark theme';
    }
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkTheme', darkTheme);
  }

  getThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    darkTheme = prefs.getBool('darkTheme')!;
    notifyListeners();
  }
}
