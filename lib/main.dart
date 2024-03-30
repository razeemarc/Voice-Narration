import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() => runApp(TheApp());

class TheApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    Future _speak() async {
      print(await flutterTts.getLanguages);
      await flutterTts.setLanguage("en-US");
      await flutterTts.speak("Hello");
    }

    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        child: Text("Press this button"),
        onPressed: () => _speak(),
      ),
    );
  }
}
