import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_app/src/ToDoCard.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _MyWidgetState();
}

class cardListClass {
  final String title;
  final String desc;
  cardListClass(this.title, this.desc);
}

class _MyWidgetState extends State<ToDoList> {
  List<cardListClass> entries = [new cardListClass('title1', 'descrition 1'), new cardListClass('title1', 'descrition 3sdvnkrv ervjkn irjkewvndjknef djkv,ndf jkv,mdfn jdkfm, nijdk')];
  delete(index) {
    setState(() {
      entries.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    final listView = ListView.separated(
      scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.all(8),
    shrinkWrap: true,
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container( child: Row(children: [ToDoCard(title: '${entries[index].title}', desc: '${entries[index].desc}', delete: delete, index: index )]), padding: EdgeInsets.only(left: 25),);
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
  final addCard = Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [Padding(child: Icon(Icons.add), padding: EdgeInsets.only(right: 20, top: 15))],
  );
    return 
    Container(child: Column(children: [
      addCard,
      Container(
      margin: EdgeInsets.only(top: 20),
      child: listView,
      height: 300,
    )]));
  }
}