import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          //Add your pressed code here
        }),
        child: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    ));
  }
}
