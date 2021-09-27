import 'package:taskapp/models/tasks.dart';

import './models/users_account.dart';

List<UserAcount> DUMMY_EMAILS = [
  const UserAcount(
    email: 'salma12@yahoo.com',
    password: '123456789',
  ),
  const UserAcount(
    email: 'karem48@gmail.com',
    password: 'Smkb@15xs',
  ),
  const UserAcount(
    email: 'essam666@yahoo.com',
    password: 'Essam0000',
  )
];

List<Task> DUMMY_TASKS = [
  const Task(
    taskName: 'task1',
    projectName: 'project1',
    userDo: 'Ahmed Ali',
  )
];
