import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 100,
                  child: Text(
                    'Hello World this is too long',
                    // overflow: TextOverflow.ellipsis,
                    overflow: TextOverflow.fade,
                    // style: TextStyle(
                    //   fontSize: 50,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    style: Theme.of(context).textTheme.display4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
