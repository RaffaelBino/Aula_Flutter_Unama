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
          appBar: AppBar(
            title: Text("Contador"),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.plus_one),
            onPressed: () {
              print("Click!");
            },
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Contagem:"),
                Text("0"),
              ],
            ),
          ),
        )
    );
  }
}
