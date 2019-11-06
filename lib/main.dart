import 'package:flutter/material.dart';
import './mDrawer.dart';
import './pages/home.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
//        appBar: PreferredSize(
//            child: MHeaderBar(), preferredSize: Size(double.infinity, 220)),
        drawer: MDrawer(),
        body: HomePage(),
      ),
    );
  }
}

