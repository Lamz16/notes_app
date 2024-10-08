import 'package:flutter/material.dart';

class SayHiTxt extends StatelessWidget {
  final String text;

  const SayHiTxt({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorBg = Color(0xFF66E381);
    return Container(
      decoration: BoxDecoration(
        color: colorBg,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(10, 5),
            blurRadius: 10,
            spreadRadius: -4
          )
        ],
      ),
      margin: const EdgeInsets.only(bottom: 60),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
