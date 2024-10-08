import 'package:flutter/material.dart';

class CustomFab extends StatelessWidget {

  final VoidCallback onPressed;
  final String toolTip;
  final Widget child;

  const CustomFab({Key? key,
    required this.onPressed,
    required this.toolTip,
    required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Colors.green,
      foregroundColor: Colors.red,
      tooltip: toolTip,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
      ),
      child: child,
    );
  }
}
