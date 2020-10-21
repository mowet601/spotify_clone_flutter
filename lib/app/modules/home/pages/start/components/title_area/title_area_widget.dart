import 'package:flutter/material.dart';

class TitleAreaWidget extends StatelessWidget {
  final String title;

  TitleAreaWidget({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}
