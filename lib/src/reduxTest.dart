import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class reduxTest extends StatefulWidget {
  const reduxTest({super.key});

  @override
  State<reduxTest> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<reduxTest> {
  String st = 'wrewfre';
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    print(counter);
    return Container( child: TextButton(child: Text('${st}'), onPressed: () => {
      setState(() {
        counter = counter+1;
        st = 'dfvfv';
      })
    },),);
  }
}