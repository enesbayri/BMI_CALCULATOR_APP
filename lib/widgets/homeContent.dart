
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_15/ui_helpers/textSet.dart';
import 'package:flutter_application_15/ui_helpers/textStyleHelper.dart';
import 'package:flutter_application_15/widgets/calculatesTools.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/calculate_bg.png"),
                  fit: BoxFit.fill)),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.28,
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: SizedBox(
              width: 300,
              child: Text(
                TextSet.homePageText,
                style: TextStyleHelper.homepageTextStyle,
              ),
            ),
          ),
        ),
        const CalculatesTools()
      ],
    );
  }
}
