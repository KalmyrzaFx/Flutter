import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children:  [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Hello world',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Earth')
                  ),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.asset('earth.jpg'),
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
