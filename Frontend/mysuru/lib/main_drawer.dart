import 'package:flutter/material.dart';
import 'package:mysuru/login.dart';

import 'models/global.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: yellowColor,
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/dp.png'), fit: BoxFit.fill)),
              ),
              Text(
                'User',
                style: TextStyle(fontSize: 22.0, color: greyColor),
              ),
              Text(
                'abcd@gmail.com',
                style: TextStyle(fontSize: 22.0, color: greyColor),
              )
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 18.0),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'Settings',
            style: TextStyle(fontSize: 18.0),
          ),
          onTap: null,
        ),
        ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => SignIn()))),
      ],
    ));
  }
}
