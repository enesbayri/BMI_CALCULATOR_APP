
// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_15/ui_helpers/buttonStyleHelper.dart';
import 'package:flutter_application_15/ui_helpers/textSet.dart';
import 'package:flutter_application_15/ui_helpers/textStyleHelper.dart';
import 'package:flutter_application_15/widgets/createSlider.dart';
import 'package:flutter_application_15/widgets/labelRow.dart';

class CalculatesTools extends StatefulWidget {
  const CalculatesTools({
    super.key,
  });

  @override
  State<CalculatesTools> createState() => _CalculatesToolsState();
}

class _CalculatesToolsState extends State<CalculatesTools> {
  double height = 1.5;
  int weight = 100;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        LabelRow(
            leftLabel: TextSet.heightInputLabel,
            rightLabel: TextSet.getHeightFixed(height)),
        CreateSlider(
            value: height,
            max: 3.0,
            division: 300,
            onChanged: (value) {
              setState(() {
                height = value;
              });
            }),
        LabelRow(
            leftLabel: TextSet.weightInputLabel,
            rightLabel: TextSet.getWeightFixed(weight)),
        CreateSlider(
            value: weight.toDouble(),
            max: 200,
            division: 200,
            onChanged: (value) {
              setState(() {
                weight = value.toInt();
              });
            }),
        ElevatedButton(
          style: ButtonStyleHelper.calculateButtonStyle(
              MediaQuery.of(context).size.width - 32, 30.0),
          onPressed: () {
            result = weight / (height * height);
            String sound=TextSet.soundName(result);
            final player = AudioPlayer();
            player.play(AssetSource("sounds/$sound.mp3"));
            Navigator.of(context).pushNamed("resultPage", arguments: result);
          },
          child: Text(
            TextSet.calculateButtonText,
            style: TextStyleHelper.calculateButtonTextStyle,
          ),
        ),
        const SizedBox(height: 10)
      ]),
    );
  }
}
