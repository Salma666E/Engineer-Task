import 'package:flutter/material.dart';

class RowTextCustom extends StatelessWidget {
  final String leftText;

  final String rightText;

  const RowTextCustom(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(leftText),
        const SizedBox(width: 3,),
        Text(rightText),
      ],
    );
  }
}
