import 'package:flutter/material.dart';
import '../mHeaderBar.dart';
import '../components/mTodoList.dart';
import '../mDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget drawer;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 800) {
      setState(() {
        drawer = Expanded(
          child: Container(),
          flex: 0,
        );
      });
    } else {
      setState(() {
        drawer = MDrawer();
      });
    }

    return Row(
      children: <Widget>[
        drawer,
        Expanded(
          child: Column(
            children: <Widget>[
              MHeaderBar(),
              Expanded(child: MTodoList()),
            ],
          ),
        ),
      ],
    );
  }
}

Widget loading() {
  double sideLength = 50;
  return Center(
    child: AnimatedContainer(
      height: sideLength,
      width: sideLength,
      duration: Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        // color: Colors.yellow,
        child: CircularProgressIndicator(),
        // child: InkWell(
        //   onTap: () {
        //     setState(() {
        //       sideLength == 50 ? sideLength = 100 : sideLength = 50;
        //     });
        //   },
        // ),
      ),
    ),
  );
}
