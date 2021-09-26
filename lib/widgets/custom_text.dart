import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final TextStyle style_text;

  final String text;

  const CustomText(this.text, this.style_text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style_text,
    );
  }
}
