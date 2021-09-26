import 'package:flutter/material.dart';
import '/models/custom_style.dart';

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
          SizedBox(height: 15,),
          Text(
            title,
            textAlign: TextAlign.center,
            style: custom_style_title,
          ),
          SizedBox(height: 8,),
          Text(
            body,
            textAlign: TextAlign.center,
            style: custom_style_body,
          ),
        ],
      ),
    );
  }
}
