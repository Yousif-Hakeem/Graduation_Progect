import 'package:flutter/material.dart';
import 'package:graduation_project/models/constants.dart';
import 'package:graduation_project/view/Screens/Home_screen.dart';
import 'package:graduation_project/view/Screens/Login_screen.dart';
import 'package:graduation_project/view/Screens/onBoarding_screen.dart';

class Routing {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings) {
      // ignore: constant_pattern_never_matches_value_type
      case onBoardingScreenPath:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      // ignore: constant_pattern_never_matches_value_type
      case loginScreenPath:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      // ignore: constant_pattern_never_matches_value_type
      case homeScreenPath:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
    return null;
  }
}
