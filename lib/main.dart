import 'package:flutter/material.dart';

void main() => runApp(Task01());

class Task01 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Task01State();
  }
}

class _Task01State extends State<Task01> {
  bool _frase = false;
  int contador = 0;

  int cambiaTexto(bool cambia) {
    int dato;
    setState(() {
      if (cambia) {
        dato = 0;
      } else {
        dato = 1;
      }
    });
    return dato;
  }

  bool verdaderoFalso(bool cambia) {
    setState(() {
      if (cambia) {
        cambia = false;
      } else {
        cambia = true;
      }
    });
    return cambia;
  }

  var frases = ['Crazy Diamond', 'Another one bites the dust'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Primera de la tareas',
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task 01'),
        ),
        body: Column(
          children: [
            Container(
              child: Center(
                child: Text(
                  frases[contador],
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            RaisedButton(
              child: Text(
                'Cambia el texto', 
              ),
              onPressed: () {
                contador = cambiaTexto(_frase);
                _frase = verdaderoFalso(_frase);
              },
              color: Colors.teal,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
