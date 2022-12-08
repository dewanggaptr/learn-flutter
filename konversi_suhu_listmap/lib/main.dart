import 'package:flutter/material.dart';
import 'package:konversi_suhu_flutter/widgets/convert.dart';
import 'package:konversi_suhu_flutter/widgets/input.dart';
import 'package:konversi_suhu_flutter/widgets/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //var changes
  TextEditingController etInput = TextEditingController();

  double inputUser = 0;
  double kelvin = 0;
  double reamur = 0;

  @override
  void konversiSuhu() {
    setState(() {
      inputUser = double.parse(etInput.text);
      kelvin = inputUser + 273;
      reamur = inputUser * (4 / 5);
    });
  }

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
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Input(etInput: etInput),
            Result(kelvin: kelvin, reamur: reamur),
            Convert(konversiSuhu: konversiSuhu)
          ],
        )),
      ),
    );
  }
}
