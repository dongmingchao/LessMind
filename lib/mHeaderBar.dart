import 'package:flutter/material.dart';

class MHeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 200,
          color: Colors.blueAccent,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'images/flutter.png',
                fit: BoxFit.fitWidth,
                height: 200,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -1.0),
                    end: Alignment(0.0, -0.4),
                    colors: <Color>[Color(0x60000000), Color(0x00000000)],
                  ),
                ),
              ),
              Positioned.fill(
                top: 22,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: Scaffold.of(context).openDrawer),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text(
                        '标题',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 1,
                            child: FlatButton(
                              child: Text('SHARE', semanticsLabel: 'Share AAA'),
                              textColor: Colors.amber.shade500,
                              onPressed: () {
                                print('pressed');
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: FlatButton(
                              child: Text('EXPLORE',
                                  semanticsLabel: 'Explore AAA'),
                              textColor: Colors.amber.shade500,
                              onPressed: () {
                                print('pressed');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        LinearProgressIndicator(),
      ],
    );
  }
}
