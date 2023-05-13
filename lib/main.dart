import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildkey({required Color color}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note1.wav');
        },
        child: Icon(null),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 50, vertical: 16)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red),
              buildkey(color: Colors.orange),
              buildkey(color: Colors.yellow),
              buildkey(color: Colors.greenAccent),
              buildkey(color: Colors.green),
              buildkey(color: Colors.blue),
              buildkey(color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
