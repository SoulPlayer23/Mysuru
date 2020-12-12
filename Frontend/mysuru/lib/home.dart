import 'package:flutter/material.dart';
import 'package:mysuru/models/global.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: greyColor,
      ),
    );
  }
}
