import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
              children: [
                  Text(
                    'Add Task',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.lightBlueAccent
                    ),
                    ),
                  TextField(
                    // to auto enable keyboard pop up
                    autofocus: true,
                    textAlign: TextAlign.center,
                  ), 
                  TextButton(onPressed: () {} , child: Text('Add new task'),
                  )
              ],
          
        ),

      ),
    );
  }
}