import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function toggleCheckedBox;
  final Function onLongPressedTask;

  TaskTile({this.isChecked, this.title, this.toggleCheckedBox, this.onLongPressedTask});

@override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressedTask,
      title: Text(title,
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough:null,
        ),),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckedBox,
      ),
    );
  }
}


