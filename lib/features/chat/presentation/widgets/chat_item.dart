import 'package:flutter/material.dart';
import 'package:unnamed_app/features/chat/presentation/widgets/unread_indicator.dart';

class ChatItem extends StatelessWidget {
  final String imgURL, name, message, unreadForHowLong;
  final int unread;
  final bool active;

  ChatItem(
      {Key key,
      this.name,
      this.imgURL,
      this.unread,
      this.active,
      this.message,
      this.unreadForHowLong})
      : super(key: key);

  Widget _activeIcon(isActive) {
    if (isActive) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: EdgeInsets.all(3),
          width: 16,
          height: 16,
          color: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              color: Color(0xff43ce7d), // flat green
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 12.0),
            child: Stack(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    print('You want to see the display pictute.');
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(this.imgURL),
                    radius: 30.0,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: _activeIcon(this.active),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 6.0, right: 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontSize: 18),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4.0),
                      child: Text(this.message,
                          style: TextStyle(
                              color: Colors.grey, fontSize: 15, height: 1.1),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                    )
                  ],
                )),
          ),
          Column(
            children: <Widget>[
              Text(this.unreadForHowLong,
                  style: TextStyle(color: Colors.grey[350])),
              UnreadIndicator(unread: this.unread),
            ],
          )
        ],
      ),
    );
  }
}
