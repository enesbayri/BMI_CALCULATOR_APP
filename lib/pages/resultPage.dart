
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_15/ui_helpers/buttonStyleHelper.dart';
import 'package:flutter_application_15/ui_helpers/colorHelper.dart';
import 'package:flutter_application_15/ui_helpers/textSet.dart';
import 'package:flutter_application_15/ui_helpers/textStyleHelper.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.result});

  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: ColorHelper.resultBgColor(result),
                image: const DecorationImage(
                    image: AssetImage("assets/images/result_bg.png"),
                    fit: BoxFit.fill)),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(mainAxisSize: MainAxisSize.min,
            children: [
              Text(TextSet.resultPageLabel,style: TextStyleHelper.resultPageLabelTextStyle,),
              Text(result.toStringAsFixed(1),style: TextStyleHelper.resultPageResultTextStyle,),
              Text(TextSet.suggestion(result),style: TextStyleHelper.resultPageSuggestionTextStyle,),
            ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                style: ButtonStyleHelper.reCalculateButtonStyle(
                    MediaQuery.of(context).size.width - 32, 30.0),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  TextSet.resultPageButtonText,
                  style: TextStyleHelper.reCalculateButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
