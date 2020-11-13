
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:my_todo_list/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'get homer fast'),
    Task(name: 'get homer fast2'),
    Task(name: 'get homer fast3'),
    Task(name: 'get homer fast4'),

  ];

  // UnmodifiableListView<Task> get tasks {
  //   return UnmodifiableListView(_tasks);
  // }


  int get taskCount{
    return tasks.length;
  }

  addTask(String newTask){
    final task =Task(name: newTask);
    tasks.add(task);
    notifyListeners();

  }

  updateTask(Task task){
    task.toggleDone();
    notifyListeners();

  }

  deleteTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
}