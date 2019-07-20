import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Material(
            color: Colors.red,
            child: InkWell(
              onTap: () => print('tapped!'),
              child: Container(width: 100, height: 100),
            ),
          ),
        ),
      ),
    );
  }
}
