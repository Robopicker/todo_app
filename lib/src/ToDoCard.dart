import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_app/src/CheckBox.dart';

class ToDoCard extends StatelessWidget {
  final String title;
  const ToDoCard({super.key, required this.title });

  @override
  Widget build(BuildContext context) {
    final Title = Text(title);
    final Dec = Container( child: Text(' please check descisfdfvdvfdv here', ), width: 150,);
    final DeleteIcon = GestureDetector(
      onTap: () => {
        print("sdvdfvfd")
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.redAccent),
        child: Text("Delete"),
        padding: EdgeInsets.all(13),
        margin: EdgeInsets.only(top: 10),
      ),
    );
    return Container(
      decoration: BoxDecoration( color: Colors.grey, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Title,
        Dec,
        DeleteIcon,
        CheckboxWidget()
      ]),
        height: 200,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(bottom: 20),
    );
  }
}