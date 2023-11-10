import 'package:flutter/material.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({super.key});

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 100,
            width: widthSize,
            child: Image.asset('images/Background (2).png'),
          ),
        ),
        SizedBox(height: 10),
        Image.asset('images/Tittle (1).png')
      ],
    );
  }
}
