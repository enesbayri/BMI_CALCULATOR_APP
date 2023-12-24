
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_15/ui_helpers/colorHelper.dart';

class CreateSlider extends StatelessWidget {
  final double max;
  final double value;
  final int division;
  final Function onChanged;
  const CreateSlider({
    Key? key,
    required this.max,
    required this.value,
    required this.division,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slider.adaptive(
      value: value,
      max: max,
      divisions: division,
      activeColor: ColorHelper.secondaryMainColor,
      onChanged: (value) {
        onChanged(value);
      },
    );
  }
}
