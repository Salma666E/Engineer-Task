import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskapp/models/users_account.dart';
import '../dummy_data.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuth = false;
  String errorMsg = "Null";
  Map<String, String> myAccount = {
    'email': " ",
    'password': " ",
  };
  bool get isAuth {
    if (_isAuth) {
      return true;
    } else {
      return false;
    }
  }

  void getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    myAccount['email'] = prefs.getString('email') ?? "";
    myAccount['password'] = prefs.getString('password') ?? "";
    _isAuth = prefs.getBool('isAuth') ?? false;
    notifyListeners();
  }

  void setData(String email, String password) async {
    _isAuth = true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('email', email);
    prefs.setString('password', password);
    prefs.setBool('isAuth', _isAuth);
    myAccount['email'] = email.toString();
    myAccount['password'] = password.toString();
    notifyListeners();
  }

  void signUp(String email, String password) {
    DUMMY_EMAILS.add(
      UserAcount(
        email: email.toString(),
        password: password.toString(),
      ),
    );
    setData(email, password);
    notifyListeners();
  }

  void login(String email, String password) {
    bool _existUser = false;
    DUMMY_EMAILS.firstWhere((user) {
      _existUser = true;
      return user.email == email && user.password == password;
    });
    if (_existUser) {
      setData(email, password);
    } else {
      errorMsg = "Authentication failed";
    }
    notifyListeners();
  }
}
