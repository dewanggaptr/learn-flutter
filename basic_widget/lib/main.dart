import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Contoh Padding")),
          // ignore: avoid_unnecessary_containers
          body: Container(
              padding: const EdgeInsets.only(left: 20),
              margin: const EdgeInsets.all(20),
              height: 99,
              width: 250,
              alignment: Alignment.topCenter,
              color: Colors.orange,
              child: const Text(
                'Ayo Belajar Flutter',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ))),
    );
  }
}
