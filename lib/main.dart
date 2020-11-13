import 'package:flutter/material.dart';
import 'package:my_todo_list/models/task_data.dart';
import 'package:my_todo_list/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_){
      return TaskData();
    },
    child: MaterialApp(
      title: 'My Todo List',
      home: TasksScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


