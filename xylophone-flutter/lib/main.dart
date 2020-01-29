import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String filename) {
    final player = AudioCache();
    player.play(filename);
  }

  Widget buildKey({Color color, String filename}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(filename);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, filename: 'note1.wav'),
                buildKey(color: Colors.orange, filename: 'note2.wav'),
                buildKey(color: Colors.yellow, filename: 'note3.wav'),
                buildKey(color: Colors.green, filename: 'note4.wav'),
                buildKey(color: Colors.teal, filename: 'note5.wav'),
                buildKey(color: Colors.blue, filename: 'note6.wav'),
                buildKey(color: C   olors.purple, filename: 'note7.wav'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
