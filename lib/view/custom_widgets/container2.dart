import 'package:flutter/material.dart';
import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterCubit.dart';

class MyContainer2 extends StatelessWidget {
  final String? text;
  final VoidCallback onClick;
  final Color? containerColor;
  final Border? border;
  final TextStyle textStyle;

  const MyContainer2({
    super.key,
    required this.text,
    required this.onClick,
    required this.containerColor,
    required this.border,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
        onTap: onClick,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Container(
            child: Center(
              child: Text(text!, style: textStyle),
            ),
            width: size.width,
            height: 40,
            decoration: BoxDecoration(
                border: border,
                borderRadius: BorderRadius.circular(40),
                color: containerColor),
          ),
        ));
  }
}
