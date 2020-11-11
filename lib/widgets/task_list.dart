import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:my_todo_list/models/tasks.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        return TaskTile(
            title: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            toggleCheckedBox: (checkedBoxState) {
              setState(() {
                widget.tasks[index].isDone = checkedBoxState;
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
