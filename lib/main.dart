import 'package:flutter/material.dart';
import './store.dart';
import './mHeaderBar.dart';
import './mDrawer.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: PreferredSize(
            child: MHeaderBar(), preferredSize: Size(double.infinity, 181)),
        drawer: MDrawer(),
        body: SafeArea(
            child: ListView(children: [
          Card(
            child: Column(children: <Widget>[...showList()]),
          )
        ])),
      ),
    );
  }
}

List<Widget> showList() {
  List<Widget> ret = [];
  for (var i = 0; i < 20; i++) {
    ret.addAll([
      showItem(),
      new Divider(),
    ]);
  }
  return ret;
}

Widget showItem() {
  return new ListTile(
    title: Row(
      children: <Widget>[DyCheckbox(), Text('aaa')],
    ),
  );
}
