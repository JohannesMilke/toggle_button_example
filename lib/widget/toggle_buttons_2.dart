import 'package:flutter/material.dart';

class ToggleButtons2 extends StatefulWidget {
  @override
  _ToggleButtons2State createState() => _ToggleButtons2State();
}

class _ToggleButtons2State extends State<ToggleButtons2> {
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) => ToggleButtons(
        isSelected: isSelected,
        selectedColor: Colors.white,
        color: Colors.black,
        fillColor: Colors.lightBlue.shade900,
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.call),
          Icon(Icons.cake),
        ],
        onPressed: (int newIndex) {
          setState(() {
            for (int index = 0; index < isSelected.length; index++) {
              if (index == newIndex) {
                isSelected[index] = !isSelected[index];
              } else {
                isSelected[index] = false;
              }
            }
          });
        },
      );
}
