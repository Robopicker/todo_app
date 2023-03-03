import 'package:flutter/material.dart';
import 'package:todo_app/src/AddToDo.dart';
import 'package:todo_app/src/MyButton.dart';
import 'package:todo_app/src/ToDoCard.dart';
import 'package:todo_app/src/ToDoItem.dart';
import 'package:todo_app/src/ToDoList.dart';
import 'package:todo_app/src/UserInfo.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: Container(child: Column(children: [UserInfo(),ToDoList()]), padding: EdgeInsets.only(top: 0),))
    )
    );
  }
}