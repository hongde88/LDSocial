import 'package:flutter/material.dart';
import 'package:unnamed_app/features/chat/presentation/widgets/chat_item.dart';

import '../../../../core/constants/constants.dart' as Constants;
import '../widgets/custom_heading.dart';
import 'chat_detail.dart';

class Chat extends StatelessWidget {
  const Chat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      elevation: 0.4,
      backgroundColor: Colors.white,
      title: Text(
        Constants.CHAT_TITLE,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('Whatever button here'),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomHeading(
            title: 'Direct Messages',
          ),
          ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatDetail(index: index)),
                    );
                  },
                  child: ChatItem(
                    imgURL: 'https://i.pravatar.cc/111$index',
                    message: 'Hi how are you',
                    name: 'Test User',
                    active: true,
                    unread: 5,
                    unreadForHowLong: '15 min ago',
                  ),
                ),
              );

              // return Material(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => ChatDetail(),
              //         ),
              //       );
              //     },
              //     child: Container(
              //       margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
              //       padding: EdgeInsets.all(15),
              //       decoration: BoxDecoration(
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey.withAlpha(50),
              //             offset: Offset(0, 0),
              //             blurRadius: 5,
              //           ),
              //         ],
              //         borderRadius: BorderRadius.circular(5),
              //         color: Colors.white,
              //       ),
              //       child: Row(
              //         children: <Widget>[
              //           Stack(
              //             children: <Widget>[
              //               Container(
              //                 child: CircleAvatar(
              //                   backgroundImage: NetworkImage(
              //                       'https://i.pravatar.cc/11$index'),
              //                   minRadius: 35,
              //                   backgroundColor: Colors.grey[200],
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Padding(
              //             padding: EdgeInsets.only(left: 10),
              //           ),
              //           Expanded(
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: <Widget>[
              //                 Text(
              //                   'Jocelyn',
              //                   style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 18,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(top: 5),
              //                 ),
              //                 Text(
              //                   'Hi How are you ?',
              //                   style: TextStyle(
              //                     color: Color(0xff8C68EC),
              //                     fontSize: 14,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(top: 5),
              //                 ),
              //                 Text(
              //                   '11:00 AM',
              //                   style: TextStyle(
              //                     color: Colors.grey,
              //                     fontSize: 12,
              //                   ),
              //                 )
              //               ],
              //             ),
              //           ),
              //           Column(
              //             children: <Widget>[
              //               Padding(
              //                 padding: EdgeInsets.only(right: 15),
              //                 child: Icon(
              //                   Icons.chevron_right,
              //                   size: 18,
              //                 ),
              //               )
              //             ],
              //           )
              //         ],
              //       ),
              //     ),
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }
}
