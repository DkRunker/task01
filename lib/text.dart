import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final List<String> _frases;
  final int _contador;

  Texto(this._frases, this._contador);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          _frases[_contador],
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
