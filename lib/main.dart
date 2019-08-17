import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/about': (context) => AboutScreen()
      },
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Go About Page'),
              color: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, '/about');
                // simple way

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => AboutScreen(name: 'About'),
                //   ),
                // );
                /** more complex way */

                // Navigator.popAndPushNamed(context, '/about');
                // with back button on header and if user click, get out of the app

                // Navigator.pushReplacementNamed(context, '/about');
                
                // without back button on header and if user click on native back button, get out of the app
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  final String name;

  AboutScreen({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name: App Name'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
