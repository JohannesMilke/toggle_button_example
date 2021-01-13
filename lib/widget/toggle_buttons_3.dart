import 'package:flutter/material.dart';

class ToggleButtons3 extends StatefulWidget {
  @override
  _ToggleButtons3State createState() => _ToggleButtons3State();
}

class _ToggleButtons3State extends State<ToggleButtons3> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) => ToggleButtons(
        isSelected: isSelected,
        selectedColor: Colors.white,
        color: Colors.black,
        fillColor: Colors.lightBlue.shade900,
        borderWidth: 3,
        borderColor: Colors.lightBlue.shade900,
        selectedBorderColor: Colors.lightBlue,
        borderRadius: BorderRadius.circular(50),
        children: <Widget>[
          Icon(Icons.ac_unit),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text('Any', style: TextStyle(fontSize: 18)),
          ),
          Icon(Icons.cake),
        ],
        onPressed: (int newIndex) {
          final isOneSelected =
              isSelected.where((element) => element).length == 1;

          if (isOneSelected && isSelected[newIndex]) return;

          setState(() {
            for (int index = 0; index < isSelected.length; index++) {
              if (index == newIndex) {
                isSelected[index] = !isSelected[index];
              }
            }
          });
        },
      );
}
