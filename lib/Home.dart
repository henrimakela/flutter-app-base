import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Center(
        child: Text(
          "This is a flutter app template created by Henri Mäkelä",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
