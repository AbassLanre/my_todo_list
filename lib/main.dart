import 'package:flutter/material.dart';
import 'package:my_todo_list/screens/tasks_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'My Todo List',
    home: TasksScreen(),
    debugShowCheckedModeBanner: false,
  ));
}


