import 'package:flutter/material.dart';

class CardPlaylistWidget extends StatelessWidget {
  final String label;
  final String image;

  CardPlaylistWidget({Key key, this.label, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthCard = (MediaQuery.of(context).size.width / 2) - 15;
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.grey[800].withOpacity(0.6),
        height: 60.0,
        width: widthCard,
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("images/$image"),
            ),
            Container(
              width: widthCard - 60,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Center(
                child: Text(
                  label,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
