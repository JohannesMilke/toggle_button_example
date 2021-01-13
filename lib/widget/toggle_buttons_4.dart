import 'package:flutter/material.dart';

class ToggleButtons4 extends StatefulWidget {
  @override
  _ToggleButtons4State createState() => _ToggleButtons4State();
}

class _ToggleButtons4State extends State<ToggleButtons4> {
  List<bool> isSelected = [false, false];

  @override
  Widget build(BuildContext context) => ToggleButtons(
        isSelected: isSelected,
        selectedColor: Colors.white,
        color: Colors.black,
        fillColor: Colors.lightBlue.shade900,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text('Cat', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text('Dog', style: TextStyle(fontSize: 18)),
          ),
        ],
        onPressed: (int index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
      );
}
