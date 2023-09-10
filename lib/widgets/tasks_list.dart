import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';





class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    // builder is used to render a large number of list items
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
        itemBuilder: (context, index) {
          
          return TaskTile(
            // Now we use Provider to get the shared data
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (bool checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            },  
          );
        },
        // this will allow to iterate through the list by giving the stoppind condition
        itemCount: taskData.taskCount,
      );
      },
      
    );
  }
}
