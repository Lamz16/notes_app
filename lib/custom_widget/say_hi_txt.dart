import 'package:flutter/material.dart';

class SayHiTxt extends StatelessWidget {
  final String text;

  const SayHiTxt({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 18.0),
          )
        ],
      ),
    );
  }
}
