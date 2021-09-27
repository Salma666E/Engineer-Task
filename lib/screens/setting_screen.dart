// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskapp/models/users_account.dart';
import 'package:taskapp/providers/theme_provider.dart';
import 'package:taskapp/widgets/textfield.dart';

import '../dummy_data.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SwitchListTile(
            title: Text(
                Provider.of<ThemeProvider>(context, listen: true).themeName),
            onChanged: (value) {
              Provider.of<ThemeProvider>(context, listen: false)
                  .changeThemeMode(value);
            },
            value: Provider.of<ThemeProvider>(context, listen: true).darkTheme,
          ),
          SizedBox(
            height: 30,
          ),
          textField("New Email", 'Write your email...', _emailController,
              TextInputType.emailAddress,8.0, context),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: InkWell(
              onTap: () async {
                if (_emailController.text.isNotEmpty) {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  DUMMY_EMAILS.where((user) {
                    if (user.email == prefs.getString('email')) {
                      DUMMY_EMAILS.add(UserAcount(
                        email: _emailController.text,
                        password: user.password,
                      ));
                      DUMMY_EMAILS.remove(user);
                      prefs.setString('email', _emailController.text);
                    }
                    return user.email == prefs.getString('email');
                  });
                  _emailController.clear();
                  Navigator.of(context).pop();
                } else {
                  print('wrong');
                }
              },
              child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 5.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: Text(
                      'Save email changes',
                      style: TextStyle(color: Colors.grey[300], fontSize: 16),
                    ),
                  )),
            ),
          ),
        ],
      )),
    );
  }
}
