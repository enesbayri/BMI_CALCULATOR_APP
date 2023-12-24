
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ColorHelper {
  static Color seedColor = const Color(0xFF62609D);
  static Color secondaryMainColor = const Color(0xFFA2A0DD);
  static Color textColor = const Color(0xFF525252);
  static Color calculatebuttonTextColor = Colors.white;
  static Color reCalculatebuttonTextColor = seedColor;
  static Color reCalculatebuttonColor = Colors.white;
  static Color resulPageTextColor = Colors.white;

  static Color resultBgColor(double result){
    return (result>=25 ?const Color(0xFFFF2C55) : (result<18.5 ? Colors.red : Colors.green) );
  }
  static MaterialColor? getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;
    final int alpha = color.alpha;

    final Map<int, Color> shades = {
      50: Color.fromARGB(alpha, red, green, blue),
      100: Color.fromARGB(alpha, red, green, blue),
      200: Color.fromARGB(alpha, red, green, blue),
      300: Color.fromARGB(alpha, red, green, blue),
      400: Color.fromARGB(alpha, red, green, blue),
      500: Color.fromARGB(alpha, red, green, blue),
      600: Color.fromARGB(alpha, red, green, blue),
      700: Color.fromARGB(alpha, red, green, blue),
      800: Color.fromARGB(alpha, red, green, blue),
      900: Color.fromARGB(alpha, red, green, blue),
    };

    return MaterialColor(color.value, shades);
  }
}
