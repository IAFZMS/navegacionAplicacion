import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Contador"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    "El contador vale:",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.do_not_disturb_on,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    if (_contador > 0) {
                      setState(() {
                        _contador--;
                      });
                    }
                    print("Soy el boton de resta");
                  },
                ),
                Text(
                  "$_contador",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    if (_contador < 50) {
                      setState(() {
                        _contador++;
                      });
                    }
                    print("Soy el boton de Suma");
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
