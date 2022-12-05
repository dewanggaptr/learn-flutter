import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.kelvin,
    required this.reamur,
  }) : super(key: key);

  final double kelvin;
  final double reamur;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Text('Suhu dalam Kelvin'),
              SizedBox(height: 15),
              Text('$kelvin', style: TextStyle(fontSize: 50))
            ],
          ),
          Column(
            children: [
              Text('Suhu dalam Reamur'),
              SizedBox(height: 15),
              Text(
                '$reamur',
                style: TextStyle(fontSize: 50),
              )
            ],
          ),
        ],
      ),
    );
  }
}
