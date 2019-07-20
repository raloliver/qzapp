import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _controller.animateTo(1000,
            curve: Curves.bounceIn, duration: Duration(seconds: 2)),
      ),
      body: ListView.builder(
          controller: _controller,
          itemBuilder: (context, idx) {
            return Container(
              color: Colors.orange,
              margin: EdgeInsets.all(20),
              height: 100,
              child: Text('$idx'),
            );
          }),
    ));
  }

  List<Widget> _cards() {
    return [1, 2, 3, 4, 5, 6, 7, 8, 9]
        .map((v) => Container(
              color: Colors.blue,
              margin: EdgeInsets.all(20),
              height: 100,
              child: Text('$v'),
            ))
        .toList();
  }
}
