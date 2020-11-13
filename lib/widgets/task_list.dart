import 'package:flutter/material.dart';
import 'package:my_todo_list/models/task_data.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (_, taskData, child){
        return ListView.builder(
          itemBuilder: (_, index) {
            // print(Provider.of<TaskData>(context).tasks[index].name);
            return TaskTile(
                title: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                toggleCheckedBox: (checkedBoxState) {
                  taskData.updateTask(taskData.tasks[index]);

                },
            onLongPressedTask: (){
                  taskData.deleteTask(index);
            },);
          },
          itemCount: Provider.of<TaskData>(context).tasks.length,
        );
      },
    );
  }
}
