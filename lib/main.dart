import 'dart:io';
import 'package:flutter/material.dart';
import 'package:chat_ui/Widgets/OnlineContacts.dart';
import 'package:chat_ui/Widgets/RecentChats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(title: 'Contacts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: IconButton(
          icon: Icon(Icons.search),
          iconSize: 30.0,
          color: Colors.grey,
        ),
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Platform.isAndroid ? Icons.more_vert : Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.grey,
          ),
        ],
        elevation: 0,
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Text(
                  'ONLINE',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(
                  Icons.add,
                  size: 18,
                  color: Colors.pinkAccent,
                ),
                label: Text(
                  'ADD FRIENDS',
                  style: TextStyle(color: Colors.pinkAccent),
                ),
              ),
            ],
          ),
        ),
        OnlineContacts(),
        SizedBox(
          height: 15.0,
        ),
        RecentChats(),
      ]),
    );
  }
}
