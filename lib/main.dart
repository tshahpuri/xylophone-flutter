import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

   Expanded buildKey({int number,Color color}){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: color,
        child: Container(),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(number: 1, color: Colors.red),
              buildKey(number: 2, color: Colors.orange),
              buildKey(number: 3, color: Colors.yellowAccent),
              buildKey(number: 4, color: Colors.green),
              buildKey(number: 5, color: Colors.teal),
              buildKey(number: 6, color: Colors.blue),
              buildKey(number: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
