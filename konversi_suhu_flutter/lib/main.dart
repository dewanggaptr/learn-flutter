import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'Masukkan Suhu Dalam Celcius'),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text('Suhu dalam Kelvin'),
                      SizedBox(height: 15),
                      const Text(
                        '150',
                        style: TextStyle(fontSize: 50),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Suhu dalam Reamur'),
                      SizedBox(height: 15),
                      Text(
                        '200',
                        style: TextStyle(fontSize: 50),
                      )
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                child: Text('Konversi Suhu'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(40),
                  primary: Colors.blue,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
