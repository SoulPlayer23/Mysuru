import 'package:flutter/material.dart';
import 'package:mysuru/destination_model.dart';
import 'package:mysuru/models/global.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: greyColor,
          body: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    height: size.width * 0.85,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0)
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      child: Image(
                        image: AssetImage(widget.destination.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                    child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30.0,
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context)),
                  ),
                  Positioned(
                    left: 20.0,
                    bottom: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.destination.dname,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.only(
                              left: 20.0, top: 20.0, bottom: 20.0),
                          child: Text(
                            widget.destination.description,
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
