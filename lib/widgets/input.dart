import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final Color inputBackgroundColor;
  const Input({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.inputBackgroundColor = const Color(0xffF1F1F1),
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        decoration: BoxDecoration(
          color: widget.inputBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xffD0D5DD)),
        ),
        child: TextField(
          obscureText: widget.obscureText && _isObscure,
          decoration: InputDecoration(
            hintText: widget.hintText,
            suffixIcon: widget.obscureText
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    color: Colors.grey,
                    splashColor: Colors.white.withOpacity(0.0),
                    icon: Icon(
                      _isObscure
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                    ),
                  )
                : null,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
