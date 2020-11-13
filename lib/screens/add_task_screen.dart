import 'package:flutter/material.dart';
import 'package:my_todo_list/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String addTask;

    return Container(
      color: Color(0xff757575),
      child: SingleChildScrollView(
        reverse: true,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              )),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Add Task',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    autofocus: true,
                    decoration: InputDecoration(
                      fillColor: Colors.lightBlueAccent,
                    ),
                    // controller: taskController,
                    onChanged: (newText) {
                      addTask = newText;
                      print(addTask);
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: FlatButton(
                      color: Colors.lightBlueAccent,
                      onPressed: () {
                        print(addTask);
                        Provider.of<TaskData>(context, listen: false).addTask(addTask);
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
