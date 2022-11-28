import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Contoh Stack Widget")),
      // ignore: avoid_unnecessary_containers
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.green,
            alignment: Alignment.bottomCenter,
            child: const Text("Satu",
                style: TextStyle(fontSize: 30, color: Colors.white)),
          ),
          Container(
            color: Colors.red,
            alignment: Alignment.bottomCenter,
            child: const Text("Dua",
                style: TextStyle(fontSize: 30, color: Colors.white)),
            height: 400.0,
            width: 300.0,
          ),
          Container(
            color: Colors.deepPurple,
            alignment: Alignment.bottomCenter,
            child: const Text("Tiga",
                style: TextStyle(fontSize: 30, color: Colors.white)),
            height: 200.0,
            width: 200.0,
          ),
        ],
      ),
    ));
  }
}
