import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}


class _TaskTileState extends State<TaskTile> {

  bool? isChecked = false;
 
  void checkboxCallback ( bool? newValue ) {
    setState( () {
      isChecked = newValue;

    });
  }
 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          // if checkbox is checked strike throught the text
          decoration: (isChecked  == true) ? TextDecoration.lineThrough : null,
        ),
        
        ),
      trailing: TaskCheckbox(isChecked, checkboxCallback),
      );
  }
}



class TaskCheckbox extends StatelessWidget {
  
  final bool? checkboxState;
  final Function(bool?) toogleCheckboxState;

  TaskCheckbox(this.checkboxState, this.toogleCheckboxState);


  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkboxState,
        onChanged: toogleCheckboxState,
    );

  }
}

