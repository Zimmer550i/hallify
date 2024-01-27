import 'package:flutter/material.dart';
import 'package:hallify/utils/constants.dart';

class Button extends StatelessWidget {
  final Color color;
  final String text;
  final double width;
  final double height;
  final double size;
  final double textSize;
  final Color? textColor;
  final void Function()? func;
  const Button(
      {super.key,
      this.color = primaryColor,
      this.width = 200,
      this.height = 56,
      this.textSize = 28,
      this.size = 1,
      this.textColor,
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
        minimumSize: Size(width * size, height * size),
        shape: RoundedRectangleBorder(
          side: (color == Colors.white && textColor==null)
              ? const BorderSide(width: 1)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(10.0 * size),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? ((color == Colors.white) ? primaryColor : Colors.white),
          fontSize: textSize * size,
          fontWeight: textColor==null ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
