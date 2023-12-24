
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_15/pages/resultPage.dart';

class OnGenerateRoute {
  static Route<dynamic>? routeControl(RouteSettings settings) {
    switch (settings.name) {
      case "resultPage":
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(
            builder: (context) =>
                ResultPage(result: settings.arguments as double),
          );
        } else {
          return MaterialPageRoute(
            builder: (context) =>
                ResultPage(result: settings.arguments as double),
          );
        }
      default:
        return null;
    }
  }
}
