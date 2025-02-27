import 'package:flutter/material.dart';

class BookTestDriveBar extends StatelessWidget {
  const BookTestDriveBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blue,
      child: Center(
        child: Text(
          "Book a Test Drive",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
