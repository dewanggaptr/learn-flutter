import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Contoh Column Widget")),
      // ignore: avoid_unnecessary_containers
      body: Column(
        children: [
          Container(
            color: Colors.purpleAccent,
            child: const FlutterLogo(
              size: 90.0,
            ),
          ),
          Container(
            color: Colors.greenAccent,
            child: const FlutterLogo(
              size: 90.0,
            ),
          ),
          Container(
            color: Colors.orangeAccent,
            child: const FlutterLogo(
              size: 90.0,
            ),
          ),
        ],
      ),
    ));
  }
}
