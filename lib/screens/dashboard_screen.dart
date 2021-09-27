// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/models/tasks.dart';
import 'package:taskapp/providers/task_provider.dart';
import 'package:taskapp/providers/theme_provider.dart';

import 'drawer_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _searchController = TextEditingController();
    List<Task> tasksList =
        Provider.of<TaskProvider>(context, listen: true).avalibleTasks;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        title: Text(
          'Task Management System',
          style: TextStyle(fontSize: 18),
        ),
      ),
      drawer: DrawerScreen(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 20, top: 10.0),
                child: InkWell(
                  onTap: () => Provider.of<TaskProvider>(context, listen: false)
                      .changeView('task'),
                  child: Text(
                    "Tasks",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Provider.of<TaskProvider>(context, listen: true)
                                    .taskOrUserViewOrSearch ==
                                'task'
                            ? Provider.of<ThemeProvider>(context, listen: true)
                                    .darkTheme
                                ? Colors.white
                                : Colors.black
                            : Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: InkWell(
                  onTap: () => Provider.of<TaskProvider>(context, listen: false)
                      .changeView('user'),
                  child: Text(
                    "Users",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Provider.of<TaskProvider>(context, listen: true)
                                    .taskOrUserViewOrSearch ==
                                'user'
                            ? Provider.of<ThemeProvider>(context, listen: true)
                                    .darkTheme
                                ? Colors.white
                                : Colors.black
                            : Colors.grey),
                  ),
                ),
              ),
              if (Provider.of<ThemeProvider>(context, listen: true).darkTheme)
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 20),
                      child: TextField(
                        controller: _searchController,
                        textAlign: TextAlign.justify,
                        maxLines: 1,
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Provider.of<ThemeProvider>(context,
                                            listen: true)
                                        .darkTheme
                                    ? Colors.white
                                    : Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          contentPadding: EdgeInsets.only(top: 3, left: 10),
                          fillColor: Colors.grey[300],
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: 'Search',
                          suffixIcon: InkWell(
                              onTap: () {
                                Provider.of<TaskProvider>(context,
                                        listen: false)
                                    .changeView('search');
                                Provider.of<TaskProvider>(context,
                                        listen: false)
                                    .getResultSearch(_searchController.text);
                              },
                              child: Icon(Icons.search)),
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: Text('Robot Valley',
                  style: TextStyle(
                      color: Provider.of<ThemeProvider>(context, listen: true)
                              .darkTheme
                          ? Colors.green
                          : Colors.white))),
          Divider(
            thickness: 2,
            color: Provider.of<ThemeProvider>(context, listen: true).darkTheme
                ? Colors.white
                : Colors.grey,
          ),
          if (Provider.of<TaskProvider>(context, listen: true)
                  .taskOrUserViewOrSearch ==
              'task')
            Expanded(
              // Tasks View
              child: ListView.separated(
                itemCount: Provider.of<TaskProvider>(context, listen: true)
                    .avalibleTasksLength,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tasksList[index].taskName),
                    subtitle: Text(tasksList[index].projectName),
                    trailing: Text(tasksList[index].userDo),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    color: Provider.of<ThemeProvider>(context, listen: true)
                            .darkTheme
                        ? Colors.white
                        : Colors.grey,
                  );
                },
              ),
            ),
          if (Provider.of<TaskProvider>(context, listen: true)
                  .taskOrUserViewOrSearch ==
              'user')
            Expanded(
              // Users View
              child: ListView.separated(
                itemCount: Provider.of<TaskProvider>(context, listen: true)
                    .avalibleTasksLength,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        '${tasksList[index].userDo} do ${tasksList[index].projectName}'),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    color: Provider.of<ThemeProvider>(context, listen: true)
                            .darkTheme
                        ? Colors.white
                        : Colors.grey,
                  );
                },
              ),
            ),
          if (Provider.of<TaskProvider>(context, listen: true)
                  .taskOrUserViewOrSearch ==
              'search')
            Expanded(
              // Tasks View
              child: ListView.separated(
                itemCount: Provider.of<TaskProvider>(context, listen: true)
                    .resultSearch
                    .length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(Provider.of<TaskProvider>(context, listen: true)
                        .resultSearch[index]
                        .taskName),
                    subtitle: Text(
                        Provider.of<TaskProvider>(context, listen: true)
                            .resultSearch[index]
                            .projectName),
                    trailing: Text(
                        Provider.of<TaskProvider>(context, listen: true)
                            .resultSearch[index]
                            .userDo),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    color: Provider.of<ThemeProvider>(context, listen: true)
                            .darkTheme
                        ? Colors.white
                        : Colors.grey,
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
