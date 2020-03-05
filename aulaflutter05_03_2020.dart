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
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Perfil"),
                leading: Icon(Icons.ac_unit),
                onTap: () {},
              ),
              ListTile(
                title: Text("Cadastrar"),
                leading: Icon(Icons.add_a_photo),
                onTap: () {},
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Hello World App"),
        ),
      ),
    );
  }
}
