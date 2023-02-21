import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
import 'FourthPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina de Navegación"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Column(
              children: [
                Text(
                  "Menu de Aplicaciones ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Center(
              child: MaterialButton(
                child: Text("Mi primer App"),
                color: Colors.blueAccent,
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondPage()));
                  });
                },
              ),
            ),
            Center(
              child: MaterialButton(
                child: Text("Mi segunda App"),
                color: Colors.deepPurple,
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ThirdPage()));
                  });
                },
              ),
            ),
            Center(
              child: MaterialButton(
                child: Text("Mi Tercer  App"),
                color: Colors.deepPurple,
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new FourthPage()));
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
