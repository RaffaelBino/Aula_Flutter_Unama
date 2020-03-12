import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "App hello world",
        home: Scaffold(
            body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Olá mundo"),
            Text("Olá Fala Tadeu"),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text("Olá mundo"),
              Text("Olá Fala Raffael"),
            ]
            ),
          ],
        )
        )
    );
  }
}
