import 'package:flutter/material.dart';
import '../store.dart';

class MTodoList extends StatefulWidget {
  @override
  _MTodoList createState() => _MTodoList();
}

class _MTodoList extends State<MTodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(children: <Widget>[
        ListTile(
          title: Row(
            children: <Widget>[
              DyCheckbox(),
              Text(MediaQuery.of(context).size.toString())
            ],
          ),
        ),
        ...showList(),
      ]),
    ]);
  }
}

List<Widget> showList() {
  List<Widget> ret = [];
  for (var i = 0; i < 20; i++) {
    ret.addAll([
      showItem(),
      Divider(),
    ]);
  }
  return ret;
}

Widget showItem() {
  return ListTile(
    title: Row(
      children: <Widget>[DyCheckbox(), Text('aaa')],
    ),
  );
}
