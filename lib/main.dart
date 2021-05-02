import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_app/mainscreen.dart';
//import 'screen.dart';
import 'mainscreen.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('my app'),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(hintText: ('username'))),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(hintText: ('password'))),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListPage()));
                },
                child: Text(
                  'press me',
                  style: TextStyle(fontSize: 20),
                )),
          ],
        )));
  }
}
