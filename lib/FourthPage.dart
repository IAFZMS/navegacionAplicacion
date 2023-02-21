import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  TextEditingController _textEditingController = new TextEditingController();
  TextEditingController _textEditingController1 =
      new TextEditingController(text: "");
  TextEditingController _textEditingController2 =
      new TextEditingController(text: "");
  double _total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text("Simple OPerations"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Output: $_total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40)),
                    TextField(
                      decoration: InputDecoration(hintText: "Primer Número"),
                      controller: _textEditingController1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Segundo Número"),
                      controller: _textEditingController2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      child: Text("Suma"),
                      color: Colors.redAccent,
                      onPressed: () {
                        setState(() {
                          _doAddittion();
                        });
                      },
                    ),
                    MaterialButton(
                      child: Text("Division"),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          _doDiv();
                        });
                      },
                    ),
                    MaterialButton(
                      child: Text("Multi"),
                      color: Colors.green,
                      onPressed: () {
                        setState(() {
                          _doMul();
                        });
                      },
                    ),
                    MaterialButton(
                      child: Text("Porcentaje"),
                      color: Colors.deepOrange,
                      onPressed: () {
                        setState(() {
                          _doPorcentaje();
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

//Metodo propio para llamar al snackbar
  _showSnackBar(BuildContext context, String mensaje) {
    final snackbar = SnackBar(
      content: new Text(mensaje.toString()),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  _doAddittion() {
    setState(() {
      _total = double.parse(_textEditingController1.text) +
          double.parse(_textEditingController2.text);
      _textEditingController1.text = "";
      _textEditingController2.text = "";
    });
  }

  _doDiv() {
    setState(() {
      _total = double.parse(_textEditingController1.text) /
          double.parse(_textEditingController2.text);
      _textEditingController1.text = "";
      _textEditingController2.text = "";
    });
  }

  _doMul() {
    setState(() {
      _total = double.parse(_textEditingController1.text) *
          double.parse(_textEditingController2.text);
      _textEditingController1.text = "";
      _textEditingController2.text = "";
    });
  }

  _doPorcentaje() {
    setState(() {
      _total = double.parse(_textEditingController1.text) -
          (double.parse(_textEditingController1.text) *
              (double.parse(_textEditingController2.text) / 100));
      _textEditingController1.text = "";
      _textEditingController2.text = "";
    });
  }
}
