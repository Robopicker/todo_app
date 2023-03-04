import 'package:flutter/material.dart';
import 'package:todo_app/src/AddToDo.dart';
import 'package:todo_app/src/MyButton.dart';
import 'package:todo_app/src/ToDoCard.dart';
import 'package:todo_app/src/ToDoList.dart';
import 'package:todo_app/src/UserInfo.dart';
import 'package:todo_app/src/reduxTest.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

 Row _buildRow(Color color, String label, IconData icon) {
  return Row(children: [Icon(icon), Text(label, style: TextStyle(color: color, fontSize: 24),)],);
 }

final Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: Container(child: Column(children: [UserInfo(),
        ToDoList(), 
        reduxTest()]), padding: EdgeInsets.only(top: 0),))
    )
    );
  }
}