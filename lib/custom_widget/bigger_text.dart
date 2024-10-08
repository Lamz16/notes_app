import 'package:flutter/material.dart';

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;
  String _textBtn = "Perbesar";

  void _toggleTextSize() {
    setState(() {
      if (_textSize == 16.0) {
        _textSize = 32.0;
        _textBtn = "Perkecil";
      } else {
        _textSize = 16.0;
        _textBtn = "Perbesar";
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(fontSize: _textSize),
        ),
        ElevatedButton(
          child: Text(_textBtn),
          onPressed: _toggleTextSize,
        )
      ],
    );
  }
}
