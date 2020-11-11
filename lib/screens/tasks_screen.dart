import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_list/models/tasks.dart';
import 'package:my_todo_list/screens/add_task_screen.dart';
import 'package:my_todo_list/widgets/task_list.dart';

class TasksScreen extends StatefulWidget {

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'get homer fast'),
    Task(name: 'get homer fast2'),
    Task(name: 'get homer fast3'),
    Task(name: 'get homer fast4'),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (_) => AddTaskScreen(
              addToScreen: (newText){
                setState(() {
                  tasks.add(Task(name: newText));
                });
                Navigator.pop(context);
              }));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: 50.0, left: 30.0, bottom: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.0,
                        child: Icon(
                          Icons.list,
                          size: 30.0,
                          color: Colors.lightBlueAccent,
                        )),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'My Todo List',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '${tasks.length} Tasks',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: TaskList(tasks: tasks),
                ),
              ),
            ]),
      ),
    );
  }
}




