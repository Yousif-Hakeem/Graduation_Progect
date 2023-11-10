import 'package:flutter/material.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 100,
            width: widthSize,
            child: Image.asset('images/Background (1).png'),
          ),
        ),
        SizedBox(height: 10),
        Image.asset('images/Tittle.png')
      ],
    );
  }
}
