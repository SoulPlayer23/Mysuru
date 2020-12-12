import 'package:flutter/material.dart';
import 'package:mysuru/login.dart';
import 'package:mysuru/models/global.dart';
import 'package:mysuru/home.dart';
import 'package:mysuru/loginfields.dart';

void main() {
  runApp(SignUp());
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: greyColor,
          body: new Stack(fit: StackFit.expand, children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  height: 220,
                  child: new Image.asset(
                    'assets/logo.png',
                    scale: 1.25,
                  ),
                ),
                new Form(
                  child: new Column(
                    children: <Widget>[
                      Username(hintText: 'Name'),
                      Number(
                        hintText: 'Number',
                      ),
                      Username(hintText: 'Username'),
                      Password(
                        hintText: 'Password',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: yellowColor,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          margin: EdgeInsets.all(20),
                          width: 140,
                          child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            child: Material(
                              color: greyColor,
                              child: GestureDetector(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => SignIn(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
