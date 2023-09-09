
import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';


class TaskData extends ChangeNotifier {
  
    List<Task> tasks = [
      Task(name: 'Buy milk', isDone: false),
      Task(name: 'Buy eggs', isDone: true),
      Task(name: 'Buy bread', isDone: true),
    ];

}