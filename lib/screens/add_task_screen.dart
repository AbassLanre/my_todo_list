import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController taskController = TextEditingController();
    return Container(
      color: Color(0xff757575),
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
                  controller: taskController,
                ),
                SizedBox(height: 20.0,),
                FlatButton(
                  color: Colors.lightBlueAccent,
                  onPressed: () {},
                  child: Text('Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
