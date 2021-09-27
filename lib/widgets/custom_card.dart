// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskapp/widgets/small_widget.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(this.img, this.size, this.title, this.body);
  final String img;
  final double size;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              img,
              height: 25,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          textCustom(title),
          SizedBox(
            height: 8,
          ),
          textCustom(body),
        ],
      ),
    );
  }
}
