import 'package:flutter/material.dart';

class MyLangContainer extends StatelessWidget {
  final String? text;
  final VoidCallback onClick;
  final Color? containerColor;
  final Border? border;
  final Image? image;

  const MyLangContainer({
    super.key,
    required this.text,
    required this.onClick,
    required this.containerColor,
    required this.image,
    required this.border,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
        onTap: onClick,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage: image!.image,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Flexible(
                  child: Text(
                    text!,
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
            height: 40,
            width: size.width,
            decoration: BoxDecoration(
                border: border,
                borderRadius: BorderRadius.circular(40),
                color: containerColor),
          ),
        ));
  }
}
