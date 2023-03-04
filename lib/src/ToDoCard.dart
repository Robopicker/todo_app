import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_app/src/CheckBox.dart';

class ToDoCard extends StatefulWidget {
    final String title;
  final String desc;
  const ToDoCard({super.key, required this.title, required this.desc });

  @override
  State<ToDoCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ToDoCard> {
    bool flag = false;
  callback() {
    setState(() {
      flag = !flag;
    });
  }
  @override
  Widget build(BuildContext context) {
    final Widget Title = Text(widget.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),);
    final Dec = Container( child: Text(widget.desc, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black)), width: 150,);
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
    final buttonPanel = Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [DeleteIcon, CheckboxWidget(callback: callback) ],);
    return Container(
      decoration: BoxDecoration( color: flag ? Colors.blue : Color.fromARGB(255, 217, 210, 210), borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Title,
        Dec,
        buttonPanel,
      ]),
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        margin: EdgeInsets.only(bottom: 20),
    );
  }
}