import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_app/src/CheckBox.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200
      ),
      child: Container(
        child: Align(
          alignment: Alignment.centerLeft,
          child:  Column(children: [
          Text("Titel"), 
          Text("sub title part here"),
          CheckboxWidget(), 
          TextButton(onPressed: () => { print(12)}, child: Text("Delete", style: TextStyle(color: Colors.red, fontSize: 16, letterSpacing: 0.2),))]),),
      ),
    );
  }
}