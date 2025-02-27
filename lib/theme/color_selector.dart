import 'package:flutter/material.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 40, height: 40, color: Colors.red),
        SizedBox(width: 10),
        Container(width: 40, height: 40, color: Colors.blue),
        SizedBox(width: 10),
        Container(width: 40, height: 40, color: Colors.black),
      ],
    );
  }
}
