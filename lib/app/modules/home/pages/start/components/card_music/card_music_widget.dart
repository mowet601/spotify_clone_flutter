import 'package:flutter/material.dart';

class CardMusicWidget extends StatelessWidget {
  final String label;
  final String image;

  CardMusicWidget({Key key, this.label, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(
          height: 130,
          width: 150,
          image: AssetImage("images/$image"),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
