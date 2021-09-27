import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/models/custom_style.dart';
import 'package:taskapp/providers/theme_provider.dart';

Widget textCustom(String body) {
  return Text(
    body,
    textAlign: TextAlign.center,
    style: custom_style_body,
  );
}

BoxDecoration myBoxDecoration() {
  return const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Colors.red,
        width: 3.0,
      ),
    ),
  );
}

Widget formInput(controller, width, context) {
  return SizedBox(
    height: 50,
    width: width,
    child: TextField(
      controller: controller,
      maxLines: 1,
      autocorrect: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Name@Company.com',
        hintStyle: fontSize_textfield,
        labelStyle: fontSize_textfield,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Provider.of<ThemeProvider>(context, listen: true).darkTheme
                  ? Colors.white
                  : Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
      ),
    ),
  );
}

Widget sizeBox(hight) {
  return SizedBox(
    height: hight,
  );
}
