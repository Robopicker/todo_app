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
  List<cardListClass> entries = [new cardListClass('title1', 'descrition 1'), new cardListClass('title1', 'descrition 3sdvnkrv ervjkn irjkewvndjknef djkv,ndf dwvjernguehirjnkiurtjkgneirujksnviurjksgnviurjdf jkv,mdfn jdkfm, nijdk dvjfnkvjskf,n jfshknvsfjhkvndfijk')];
  delete(index) {
    setState(() {
      entries.removeAt(index);
    });
  }
  Container ModalContent() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextField(
               decoration: InputDecoration(
               border: OutlineInputBorder(),
               hintText: 'Enter a Title',
              ),
            ),
          TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a Description',
              ),
            ),
      ],
    ));
  }
  _showModalSheet(context) {
    String title = '';
    String desc = '';
    GestureDetector _submitButton() {
      return GestureDetector(
        onTap: () => {
            Navigator.pop(context),
            if (title != '' && desc != '') {
                setState(() {
                  entries.add(new cardListClass(title, desc));
                })
            }
        },
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color.fromARGB(255, 77, 199, 81)),
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(top: 40),
          child: Text('Submit', style: TextStyle(color: Colors.black, 
          fontSize: 16, fontWeight: FontWeight.w500),),
        ),
      );
    }
    return (
      showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        backgroundColor: Colors.white,
        context: context,
        isScrollControlled: true,
        builder: (context) => Padding(
          padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            padding: EdgeInsets.only(bottom: 40, top: 40, left: 20, right: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                      onChanged: (value) => {
                        title = value
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Your title'
                      ),
                      autofocus: true,
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      onChanged: (value) => {
                        desc = value
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Your Description'
                      ),
                      autofocus: true,
                    ),
                    _submitButton()
                ],
              )),
        ))
    );
  }
  @override
  Widget build(BuildContext context) {
    final listView = ListView.separated(
      scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.all(8),
    shrinkWrap: true,
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return SizedBox( child: Row(children: [ToDoCard(title: '${entries[index].title}', desc: '${entries[index].desc}', delete: delete, index: index ), SizedBox(width: 20,) ]),);
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
  final addCard = Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [Padding(child: GestureDetector(onTap: () => {
      _showModalSheet(context)
    }, child: Icon(Icons.add)), padding: EdgeInsets.only(right: 20, top: 15))],
  );
    return 
    Container(child: Column(children: [
      addCard,
      Container(
      margin: EdgeInsets.only(top: 20),
      child: listView,
      height: 250,
    )]));
  }
}