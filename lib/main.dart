import 'package:flutter/material.dart';
import 'package:chatting_app/pages/started_page.dart';

void main() {
  runApp(ChattingApp());
}

class ChattingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartedPage(),
    );
  }
}