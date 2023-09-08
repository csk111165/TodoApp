import 'package:flutter/material.dart';

class Task {

  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  void toogleDone(bool? value){
    // just reverse the state
    isDone = value ?? false; // converting bool to bool? Trick
    print("what is isDone $isDone");
  }

}

