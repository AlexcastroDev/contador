import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        title: 'Primeiro Projeto',
        home: Home(),
      )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int contagem = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Contador: $contagem",
          style: TextStyle(color: Colors.white),
        ),
          FlatButton(
            child: const Text('Somar'),
            color: Colors.white,
            splashColor: Colors.black12,
            onPressed: () {
            setState(() {
              contagem++;
            });
          },
        ),
      ],
    );
  }
}
