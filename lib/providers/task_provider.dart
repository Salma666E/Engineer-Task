import 'package:flutter/material.dart';
import 'package:taskapp/dummy_data.dart';
import 'package:taskapp/models/tasks.dart';

class TaskProvider with ChangeNotifier {
  List<Task> avalibleTasks = DUMMY_TASKS;
  List<Task> resultSearch = [];
  int avalibleTasksLength = DUMMY_TASKS.length;
  String taskOrUserViewOrSearch = 'task';
  getTaskList() {
    avalibleTasks = DUMMY_TASKS;
    avalibleTasksLength = DUMMY_TASKS.length;
    notifyListeners();
  }

  changeView(String text) {
    taskOrUserViewOrSearch = text;
    notifyListeners();
  }

  getResultSearch(String item) {
    resultSearch = DUMMY_TASKS
        .where((element) =>
            element.taskName == item ||
            element.projectName == item ||
            element.userDo == item)
        .toList();
    notifyListeners();
  }
}
