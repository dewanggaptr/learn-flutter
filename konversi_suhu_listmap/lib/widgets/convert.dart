import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  final Function konversiSuhu;
  const Convert({Key? key, required this.konversiSuhu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Konversi Suhu'),
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(40),
        primary: Colors.blue,
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 15, fontStyle: FontStyle.normal),
      ),
      onPressed: () {
        konversiSuhu();
      },
    );
  }
}
