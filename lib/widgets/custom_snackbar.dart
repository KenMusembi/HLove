import 'package:flutter/material.dart';

void showCustomSnackbar(BuildContext context, String textString) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(textString, style: TextStyle(color: Colors.white)),
    backgroundColor: Color(0XFFE94057),
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.all(50),
    elevation: 10,
    shape: StadiumBorder(),
  ));
}
