import 'package:flutter/material.dart';
import 'package:mysuru/home.dart';
import 'package:mysuru/models/global.dart';
import 'signup.dart';
import 'loginfields.dart';

void main() {
  runApp(SignIn());
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: greyColor,
          body: new Stack(fit: StackFit.expand, children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  height: 350,
                  child: new Image.asset(
                    'assets/logo.png',
                    scale: 1.00,
                  ),
                ),
                new Form(
                  child: new Column(
                    children: <Widget>[
                      Username(
                        hintText: 'Username',
                      ),
                      Password(hintText: 'Password'),
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
                                'Sign In',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            child: Material(
                              color: greyColor,
                              child: GestureDetector(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(),
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
