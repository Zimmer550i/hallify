import 'package:flutter/material.dart';
import 'package:hallify/utils/constants.dart';

class Button extends StatelessWidget {
  final Color color;
  final String text;
  final double width;
  final double height;
  final void Function()? func;
  const Button(
      {super.key,
      this.color = primaryColor,
      this.width = 200,
      this.height = 56,
      this.func,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        backgroundColor: color,
        disabledBackgroundColor: color,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          side: (color == Colors.white)
              ? const BorderSide(width: 1)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: (color == Colors.white) ? primaryColor : Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
