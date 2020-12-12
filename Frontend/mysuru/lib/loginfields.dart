import 'package:flutter/material.dart';
import 'package:mysuru/models/global.dart';

class Username extends StatelessWidget {
  Username({this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
      height: 50,
      width: 280,
      child: new TextFormField(
        decoration: new InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: hintText + ' :',
            hintStyle: TextStyle(color: yellowColor)),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}

class Password extends StatelessWidget {
  Password({this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
      height: 50,
      width: 280,
      child: new TextFormField(
        decoration: new InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: hintText + ' :',
            hintStyle: TextStyle(color: yellowColor)),
        keyboardType: TextInputType.text,
        obscureText: true,
      ),
    );
  }
}

class Number extends StatelessWidget {
  Number({this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
      height: 50,
      width: 280,
      child: new TextFormField(
        decoration: new InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: hintText + ' :',
            hintStyle: TextStyle(color: yellowColor)),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
