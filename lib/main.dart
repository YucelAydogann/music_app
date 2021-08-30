import 'package:flutter/material.dart';
import 'package:music_app/page/music.dart';
import 'package:music_app/page/appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBrr(),
        body: gradi(child: Music()),
      ),
    );
  }
}
