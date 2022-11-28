import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Contoh ListView Widget")),
      // ignore: avoid_unnecessary_containers
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.green,
            alignment: Alignment.topLeft,
            child: const Text(
                "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                style: TextStyle(fontSize: 30, color: Colors.white)),
          ),
          Container(
            color: Colors.red,
            alignment: Alignment.topLeft,
            child: const Text(
                "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                style: TextStyle(fontSize: 30, color: Colors.white)),
            height: 400.0,
            width: 300.0,
          ),
          Container(
            color: Colors.deepPurple,
            alignment: Alignment.topLeft,
            child: const Text(
                "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                style: TextStyle(fontSize: 30, color: Colors.white)),
            height: 200.0,
            width: 200.0,
          ),
        ],
      ),
    ));
  }
}
