// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskapp/screens/home_screen.dart';

import 'new_task_screen.dart';
import 'setting_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);
  Widget text(String title) {
    return Text(title,
        style: TextStyle(
            color: Colors.orange[300],
            fontWeight: FontWeight.bold,
            fontSize: 18));
  }

  Widget icon(IconData iconData) {
    return Icon(
      iconData,
      color: Colors.orange[300],
      size: 28,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          child: ListView(
            children: [
              ListTile(
                title: Text('Back',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                trailing: icon(
                  Icons.arrow_forward,
                ),
                onTap: () => Navigator.of(context).pop(),
              ),
              ListTile(
                leading: icon(
                  Icons.home,
                ),
                title: Text('Home',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomaScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: icon(
                  Icons.settings,
                ),
                title: Text('Setting',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: icon(
                  Icons.add,
                ),
                title: Text('New Task',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                subtitle: Text('or Project',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewTaskScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
