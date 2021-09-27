// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/models/tasks.dart';
import 'package:taskapp/providers/task_provider.dart';
import 'package:taskapp/widgets/textfield.dart';

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
            textFieldSetting(_taskController, "Task name", context),
            textFieldSetting(_projectController, "For project", context),
            textFieldSetting(_userController, "Who does that?", context),
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
