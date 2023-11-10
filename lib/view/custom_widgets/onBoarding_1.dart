import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 100,
            width: widthSize,
            child: Image.asset('images/Background.jpg'),
          ),
        ),
        SizedBox(height: 10),
        Image.asset(
            'images/Find a job, and start building your career from now on.png'),
        SizedBox(height: 10),
        Image.asset(
            'images/Explore over 25,924 available job roles and upgrade your operator now..png')
      ],
    );
  }
}
