import 'package:flutter/material.dart';

import 'core/constants/constants.dart' as Constants;
import 'features/chat/presentation/pages/chat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.APP_TITLE,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Chat(),
    );
  }
}
