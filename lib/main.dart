// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'providers/task_provider.dart';
import 'providers/theme_provider.dart';
import 'screens/auth_screen.dart';
import 'screens/dashboard_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AuthProvider()),
        ChangeNotifierProvider.value(value: ThemeProvider()),
        ChangeNotifierProvider.value(value: TaskProvider()),
      ],
      child: Consumer<AuthProvider>(
        builder: (ctx, auth, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Task',
          themeMode: Provider.of<ThemeProvider>(ctx, listen: true).darkTheme
              ? ThemeMode.dark
              : ThemeMode.light,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            accentColor: Colors.redAccent,
            canvasColor: Colors.white,
            // fontFamily: 'Raleway',
            buttonColor: Colors.black87,
            cardColor: Colors.white,
            shadowColor: Colors.black87,
            textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 50, 50, 1),
                ),
                headline6: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          darkTheme: ThemeData(
            primarySwatch: Colors.green,
            canvasColor: Color.fromRGBO(14, 22, 33, 1),
            buttonColor: Colors.white70,
            cardColor: Color.fromRGBO(35, 34, 39, 1),
            shadowColor: Colors.white60,
            textTheme: ThemeData.dark().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Colors.white60,
                ),
                headline6: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          home: auth.isAuth ? const Dashboard() : AuthScreen(),
        ),
      ),
    );
  }
}
