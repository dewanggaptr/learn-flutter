import 'package:flutter/material.dart';
import 'package:konversi_suhu_flutter/widgets/convert.dart';
import 'package:konversi_suhu_flutter/widgets/input.dart';
import 'package:konversi_suhu_flutter/widgets/result.dart';
import 'package:konversi_suhu_flutter/widgets/dropdown.dart';
import 'package:konversi_suhu_flutter/widgets/riwayat.dart';

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
  double kelvin = 0;
  double reamur = 0;
  String changeValue = " ";
  String newValue = "Kelvin";
  double result = 0;

  var listItem = ["Kelvin", "Reamur"];
  List<String> listViewItem = <String>[];

  void dropdownOnChanged(String? changeValue) {
    setState(() {
      newValue = changeValue!;
    });
  }

  @override
  void konversiSuhu() {
    setState(() {
      inputUser = double.parse(etInput.text);

      if (newValue == "Kelvin")
        result = inputUser + 273;
      else
        result = (4 / 5) * inputUser;

      listViewItem.add(newValue + " : " + result.toString());
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
          title: Text("Konverter Suhu_Dewangga Putra/2041720222"),
        ),
        body: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Input(etInput: etInput),
                //
                Dropdown(
                    dropdownOnChanged: dropdownOnChanged,
                    changeValue: changeValue,
                    listItem: listItem,
                    newValue: newValue,
                    konversiSuhu: konversiSuhu),
                Result(
                  result: result,
                ),
                Convert(konversiSuhu: konversiSuhu),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Riwayat Konversi",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(child: Riwayat(listViewItem: listViewItem)),
              ],
            )),
      ),
    );
  }
}
