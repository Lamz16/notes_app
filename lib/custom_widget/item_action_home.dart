import 'dart:ffi';

import 'package:flutter/material.dart';

class ItemActionHome extends StatelessWidget {
  final Icon share;
  final Icon thumbUp;
  final Icon thumbDown;
  final EdgeInsetsGeometry padding;

  const ItemActionHome(
      {Key? key,
      required this.share,
      required this.thumbUp,
      required this.thumbDown,
      required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[share, thumbUp, thumbDown],
      ),
    );
  }
}
