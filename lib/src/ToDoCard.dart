import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_app/src/CheckBox.dart';

class ToDoCard extends StatefulWidget {
    final String title;
  final String desc;
  final Function delete;
  final int index;
  const ToDoCard({super.key, required this.title, required this.desc, required this.delete, required this.index });

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
    final Widget Title = Text( widget.title, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),);
    final Dec = Container( child: Text(widget.desc, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black), maxLines: 4,), width: 150,);
    final DeleteIcon = GestureDetector(
      onTap: () => {
        widget.delete(widget.index)
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
      height: 200,
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        margin: EdgeInsets.only(bottom: 20),
    );
  }
}