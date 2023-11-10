import 'package:flutter/material.dart';
import 'package:graduation_project/view_models/cubits/onBoardingCubit/OnboardingCubit.dart';

class customContainer extends StatefulWidget {
  const customContainer({super.key});

  @override
  State<customContainer> createState() => _customContainerState();
}

class _customContainerState extends State<customContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < OnBoardingCubit.get(context).pages.length; i++)
          Padding(
            padding: const EdgeInsets.only(left: 2, right: 2, top: 40),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 150),
              height: OnBoardingCubit.get(context).pageIndex == i ? 10 : 8,
              width: OnBoardingCubit.get(context).pageIndex == i ? 10 : 8,
              decoration: BoxDecoration(
                  color: OnBoardingCubit.get(context).onSwipe(i),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
      ],
    );
  }
}
