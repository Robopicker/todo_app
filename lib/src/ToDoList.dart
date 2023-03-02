import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_app/src/ToDoCard.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    final List<Object> entries = [{ "title": 'title1', "des": 'please check the description here' }, { "title": 'title2', "des": "norvfdvfdbdfgvfgbdgbgbgfbgfbfgb" }, { "title": 'title3', "des": "part hervefvfvfvfg svknfvjfhvnfjkvdfnvkdfj" }];
    final listView = ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return ToDoCard(title: '${entries[index]}');
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
    return Container(
      margin: EdgeInsets.only(top: 50, left: 50, right: 50),
      child: listView,
    );
  }
}