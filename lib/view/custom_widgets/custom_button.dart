import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String? text;
  Widget? widget;
  // List<Widget>? Function() onClick;
  VoidCallback onClick;
  Function(String?)? onPress;
  CustomButton(
      {super.key,
      required this.text,
      required this.onClick,
      this.widget,
      this.onPress});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
        child: InkWell(
          onTap: onClick,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent[700]),
            height: 40,
            width: size,
            child: Center(
                child: Text(
              text.toString(),
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}





// () {
//             if (widget != null) {
//               onClick(widget!);
//             }
//           },