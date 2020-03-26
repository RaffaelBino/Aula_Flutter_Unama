import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int contador = 0 ; 
  void incrementarContador(){
    setState((){
      contador++;
    });
  }
  
  void decrementarContador() {
 
 if (contador > 0) {
 setState(() {
 contador--;
 });
 }
 }
  
  void reiniciarContador(){
    setState((){
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
      title: Text("Contador"),
        
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(bottom: 30),
              child: Image.network("https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png")),
              Text("Quantas vezes você clicou", style: TextStyle(fontSize: 20),),
 Text('$contador', style: TextStyle(fontSize: 20),
     ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text("Incrementar"),
                  onPressed: (){
                  incrementarContador();
                }),
               RaisedButton(
                 textColor: Colors.white,
                 color: Colors.red,
                  child: Text("Decrementar"),
                  onPressed: (){
                  decrementarContador();
                }),
              ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
          onPressed: (){
reiniciarContador();
          }
        ),
      ),
    );
  }
}