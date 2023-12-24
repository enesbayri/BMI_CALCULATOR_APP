
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_15/ui_helpers/textStyleHelper.dart';

class LabelRow extends StatelessWidget {
  const LabelRow({
    super.key,
    required this.leftLabel,
    required this.rightLabel,
  });

  final String leftLabel;
  final String rightLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(leftLabel, style: TextStyleHelper.inputLabelsTextStyle),
            Text(rightLabel, style: TextStyleHelper.inputLabelsTextStyle),
          ],
        ));
  }
}
