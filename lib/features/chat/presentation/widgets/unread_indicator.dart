import 'package:flutter/material.dart';

class UnreadIndicator extends StatelessWidget {
  final int unread;

  UnreadIndicator({
    Key key,
    @required this.unread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (unread == 0) {
      return Container();
    } else {
      return Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 30,
            color: Color(0xff3e5aeb),
            width: 30,
            padding: EdgeInsets.all(0),
            alignment: Alignment.center,
            child: Text(
              unread.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }
  }
}
