import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    child: GestureDetector(
      onTap: () {
        print("my tap ppp");
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.amberAccent
        ),
        child: const Center(
          child: Text("press me"),
        ),
      ),
    )
    );
  }
}