import 'package:flutter/material.dart';
import 'package:tabbar/camera.dart';
import 'package:tabbar/message.dart';
import 'package:tabbar/send.dart';
void main()=> runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
theme: new ThemeData(
  primarySwatch: Colors.purple
),
home: Homepage(),
));
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(

          bottom: TabBar(tabs: [

            Tab(icon: Icon(Icons.camera),),
            Tab(icon: Icon(Icons.message),),
            Tab(icon: Icon(Icons.send),)
          ]

          ),
        ),
        body: TabBarView(children: [
          Camerapage(),
          Messageapage(),
          Send()
        ]),
      ),
    );
  }
}
