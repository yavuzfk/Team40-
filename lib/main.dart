import 'package:flutter/material.dart';
import 'package:room_mate/screens/ana_ekran.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: AnaEkran(),
    );
  }
}
