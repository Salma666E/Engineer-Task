// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/providers/theme_provider.dart';

Widget textField(
    label, hint, _emailController, textInputType, padding, context) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: TextField(
      controller: _emailController,
      maxLines: 1,
      autocorrect: true,
      style: TextStyle(color: Colors.black),
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: label,
        fillColor: Colors.grey[300],
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Provider.of<ThemeProvider>(context, listen: true).darkTheme
                  ? Colors.white
                  : Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        hintText: hint,
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: Provider.of<ThemeProvider>(context, listen: true).darkTheme
                  ? Colors.white
                  : Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
      ),
    ),
  );
}

Widget textFieldSetting(_userController, label,  context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      controller: _userController,
      minLines: 1,
      autocorrect: true,
      style: TextStyle(color: Colors.black),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        label: Text(label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        fillColor: Colors.grey[300],
        filled: true,
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
