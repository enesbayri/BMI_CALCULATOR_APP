
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_15/ui_helpers/colorHelper.dart';

class TextStyleHelper {
  static TextStyle homepageTextStyle = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 42,
      fontWeight: FontWeight.w900,
      color: ColorHelper.textColor);
  static TextStyle inputLabelsTextStyle = TextStyle(
      fontFamily: "Montserrat", fontSize: 18, color: ColorHelper.textColor);
  static TextStyle calculateButtonTextStyle = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 20,
      fontWeight: FontWeight.w300,
      color: ColorHelper.calculatebuttonTextColor);
  static TextStyle reCalculateButtonTextStyle = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: ColorHelper.reCalculatebuttonTextColor);

  static TextStyle resultPageLabelTextStyle = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 36,
      fontWeight: FontWeight.w600,
      color: ColorHelper.resulPageTextColor);
  static TextStyle resultPageResultTextStyle = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 84,
      fontWeight: FontWeight.w600,
      color: ColorHelper.resulPageTextColor);
  static TextStyle resultPageSuggestionTextStyle = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 20,
      fontWeight: FontWeight.w300,
      color: ColorHelper.resulPageTextColor);
}
