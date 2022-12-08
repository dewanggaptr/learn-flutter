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
  final TextEditingController etInput = TextEditingController();

  double inputUser = 0;

  String newValue = "Kelvin";
  double result = 0;

  var listItem = ["Kelvin", "Reamur"];

  @override
  void konversiSuhu() {
    setState(() {
      inputUser = double.parse(etInput.text);

      if (newValue == "Kelvin")
        result = inputUser + 273;
      else
        result = (4 / 5) * inputUser;
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
            DropdownButton<String>(
              items: listItem.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: newValue,
              onChanged: dropdownOnChanged,
            ),
            Result(
              result: result,
            ),
            Convert(konversiSuhu: konversiSuhu)
          ],
        )),
      ),
    );
  }

  void dropdownOnChanged(String? changeValue) {
    setState(() {
      newValue = changeValue!;
    });
  }
}
