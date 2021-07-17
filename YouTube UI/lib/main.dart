import 'package:flutter/material.dart';
import 'package:youtube_clone/home.dart';
import 'package:youtube_clone/shorts_screen.dart';
import 'package:youtube_clone/vidPlay.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        YTVidPlayScreen.id: (context) => YTVidPlayScreen(),
        ShortsScreen.id: (context) => ShortsScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
    ),
  );
}
