import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mysuru/models/global.dart';
import 'scrollable_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<int> numbers = [1, 2, 3, 5, 8];
  // final List<String> places = [
  //   'mysuru/assets/ranganathittu.jpg',
  //   'mysuru/assets/bg1',
  //   'mysuru/assets/brindavan_gardens',
  //   'mysuru/assets/mysore_palace',
  //   'mysuru/assets/philomina_cathedral',
  // ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: yellowColor,
          body: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 30, top: 30),
                margin: EdgeInsets.only(top: size.height * 0.1),
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: greyColor),
                        children: <TextSpan>[
                      TextSpan(
                          text: 'Ready for your next',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '\nAdventure!',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold))
                    ])),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 40, bottom: 80, right: 20, left: 20),
                margin: EdgeInsets.only(top: size.height * 0.35),
                height: 600,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          // decoration: BoxDecoration(
                          //     image: new DecorationImage(
                          //         image: new AssetImage(places[index]))),
                          child: Center(
                            child: Text(
                              numbers[index].toString(),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 36.0),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.85),
                padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                height: 150,
                width: size.width,
                decoration: BoxDecoration(
                    color: yellowColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Text(
                  'Rewards',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
