import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterCubit.dart';
import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterStates.dart';

class MyContainer extends StatelessWidget {
  final Widget? containerIcon;
  final String? text;
  final VoidCallback onClick;
  final Color? containerColor;
  final Color? iconColor;
  final Border? border;
  const MyContainer(
      {super.key,
      required this.containerIcon,
      required this.text,
      required this.onClick,
      this.containerColor,
      this.iconColor,
      this.border});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Container(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    right: 80,
                    top: 20,
                  ),
                  child: Container(
                    width: 53,
                    height: 53,
                    child: containerIcon,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: border),
                  )),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  text!,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          width: 166,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: border,
              color: containerColor),
        ));
  }
}
