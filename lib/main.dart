import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(
                    CupertinoIcons.game_controller,
                    color: Colors.white,
                    size: 50,
                  ),
                  Icon(
                    CupertinoIcons.game_controller,
                    color: Colors.white,
                    size: 100,
                  ),
                  Icon(
                    CupertinoIcons.game_controller,
                    color: Colors.white,
                    size: 200,
                  ),
                ],
              ))),
    );
  }
}
