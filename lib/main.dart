
import 'package:flutter/material.dart';
import 'package:flutter_application_15/pages/homePage.dart';
import 'package:flutter_application_15/router/router.dart';
import 'package:flutter_application_15/ui_helpers/colorHelper.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorHelper.seedColor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: OnGenerateRoute.routeControl,
      home: const HomePage(),
    );
  }
}
