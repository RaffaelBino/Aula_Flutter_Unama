import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void restart() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hot Reload Demo",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Contador"),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: () {
              restart();
            },
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.network(
                        "data:image/png;base64,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"),
                  ],
                ),
                Text("Você esse tanto de vezes:"),
                Row(
                children: <Widget>[
                  Column( children: <Widget>[
                  FlatButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "Desincrementar",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                    ]
                  ),
                  Column( children: <Widget>[
                   FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "Incrementar",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                    ]
                  )
                  
                ],
                ),
              ],
            ),
          ),
        ));
  }
}
