import 'package:flutter/material.dart';

// The main function is the starting point of every Flutter application.
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('I Am Rich'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/diamond.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
