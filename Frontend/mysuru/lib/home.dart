import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mysuru/destination_model.dart';
import 'package:mysuru/destination_screen.dart';
import 'package:mysuru/models/global.dart';
import 'package:mysuru/rewards_screen.dart';
import 'destination_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: yellowColor,
            elevation: 0.0,
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: yellowColor,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 60,
                      ),
                      Text(
                        'User',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
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
                margin: EdgeInsets.only(top: size.height * 0.30),
                height: 600,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: destinations.length,
                  itemBuilder: (context, index) {
                    Destination destination = destinations[index];
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DestinationScreen(
                                    destination: destination,
                                  ))),
                      child: Container(
                        margin: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            image: new DecorationImage(
                                image: new AssetImage(destination.image),
                                fit: BoxFit.fill)),
                        child: Container(
                          padding: EdgeInsets.only(top: 15, left: 20),
                          child: Text(
                            destination.dname,
                            style: TextStyle(
                                color: greyColor, fontSize: 21.0, height: 1.0),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => RewardsScreen())),
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.80),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
