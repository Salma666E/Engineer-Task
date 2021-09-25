import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/screens/home_screen.dart';
import 'providers/auth.dart';
import 'screens/auth_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: AuthProvider()),
        ],
        child: Consumer<AuthProvider>(
            builder: (ctx, auth, _) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    // fontFamily: 'Lato',
                    // accentColor: Colors.purple,
                    colorScheme:
                        ColorScheme.fromSwatch(primarySwatch: Colors.purple)
                            .copyWith(secondary: Colors.deepOrange),
                  ),
                  home: auth.isAuth ? const HomaScreen() : AuthScreen(),
                )));
  }
}
