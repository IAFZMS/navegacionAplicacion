import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "Mi Primer App",
          style: new TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            color: Colors.redAccent,
            onPressed: () {
              print("Hola desde Flutter de nuevo");
            },
          )
        ], //<widget>[]
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Actividad AI2"),
          Text("Alumno: Francisco Z Meneses Salinas"),
          Text("Uso de Botones"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Text("B1"),
                color: Colors.yellowAccent,
                onPressed: () {
                  print("Soy el Boton 1");
                },
              ),
              MaterialButton(
                child: Text("B2"),
                color: Colors.greenAccent,
                onPressed: () {
                  print("Soy el Boton 2");
                },
              ),
              MaterialButton(
                child: Text("B3"),
                color: Colors.blueAccent,
                onPressed: () {
                  print("Soy el Boton 3");
                },
              )
            ],
          )
        ],
      )),
    );
  }
}
