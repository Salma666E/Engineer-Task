// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/models/tasks.dart';
import 'package:taskapp/providers/task_provider.dart';
import 'package:taskapp/providers/theme_provider.dart';
import 'package:taskapp/screens/dashboard_screen.dart';

import '../dummy_data.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _taskController = TextEditingController();
    final _projectController = TextEditingController();
    final _userController = TextEditingController();
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _taskController,
                minLines: 1,
                autocorrect: true,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("Task name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  fillColor: Colors.grey[300],
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Provider.of<ThemeProvider>(context, listen: true)
                                .darkTheme
                            ? Colors.white
                            : Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  border: OutlineInputBorder(
                    // borderSide:  BorderSide(style: BorderStyle.solid, color: Provider.of<ThemeProvider>(context, listen: true).darkTheme? Colors.white: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _projectController,
                minLines: 1,
                autocorrect: true,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("For project", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  fillColor: Colors.grey[300],
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Provider.of<ThemeProvider>(context, listen: true)
                                .darkTheme
                            ? Colors.white
                            : Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _userController,
                minLines: 1,
                autocorrect: true,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("Who does that?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  fillColor: Colors.grey[300],
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Provider.of<ThemeProvider>(context, listen: true)
                                .darkTheme
                            ? Colors.white
                            : Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: InkWell(
                onTap: () {
                  if (_taskController.text.isNotEmpty &&
                      _projectController.text.isNotEmpty &&
                      _userController.text.isNotEmpty) {
                    DUMMY_TASKS.add(Task(
                        taskName: _taskController.text,
                        projectName: _projectController.text,
                        userDo: _userController.text));
                    Provider.of<TaskProvider>(context, listen: false)
                        .getTaskList();
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
                      'Added task && project',
                      style: TextStyle(color: Colors.grey[300], fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
