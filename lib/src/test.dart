import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(child: Text(
        'Hello world', 
        textDirection:  TextDirection.ltr, 
        style: TextStyle(fontSize: 30, color: Colors.white ),)),
    );
  }
}