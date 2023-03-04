import 'package:flutter/material.dart';


class CheckboxWidget extends StatefulWidget {
  final Function callback;
  const CheckboxWidget({super.key, required this.callback});

  @override
  State<CheckboxWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color.fromARGB(255, 173, 111, 107);
    }
    return Checkbox(
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool ? value) => {
        widget.callback(),
        setState(() {
          isChecked = value!;
        })
      },
    );
  }
}