import 'package:flutter/material.dart';
import 'package:flutter_app_wa_tut/callscreen.dart';
import 'package:flutter_app_wa_tut/chatscreen.dart';
import 'package:flutter_app_wa_tut/status.dart';

void main() {
  runApp((MaterialApp(
    initialRoute: ChatScreen.id,
    routes: {
      ChatScreen.id: (context) => ChatScreen(),
      StatusScreen.id: (context) => StatusScreen(),
      CallScreen.id: (context) => CallScreen(),
    },
    debugShowCheckedModeBanner: false,
  )));
}
