
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_15/ui_helpers/colorHelper.dart';

class ButtonStyleHelper {
  static ButtonStyle calculateButtonStyle(widht, height) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          // If the button is pressed, return green, otherwise blue
          if (states.contains(MaterialState.pressed)) {
            return ColorHelper.secondaryMainColor;
          }
          return ColorHelper.seedColor;
        }),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        fixedSize: MaterialStateProperty.all(Size(widht, height)));
  }

  static ButtonStyle reCalculateButtonStyle(widht, height) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          // If the button is pressed, return green, otherwise blue
          if (states.contains(MaterialState.pressed)) {
            return ColorHelper.secondaryMainColor;
          }
          return ColorHelper.reCalculatebuttonColor;
        }),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        fixedSize: MaterialStateProperty.all(Size(widht, height)));
  }
}
