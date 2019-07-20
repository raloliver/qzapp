import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 5),
              boxShadow: [
                BoxShadow(offset: Offset(40, 40), color: Colors.pink),
                BoxShadow(offset: Offset(20, 20), color: Colors.yellow),
              ],
              gradient: RadialGradient(colors: [Colors.yellow, Colors.pink])),
        )),
      ),
    );
  }
}
