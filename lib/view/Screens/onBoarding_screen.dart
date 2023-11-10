import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/view/custom_widgets/custom_button.dart';
import 'package:graduation_project/view/custom_widgets/custom_scaffold.dart';
import 'package:graduation_project/view_models/cubits/onBoardingCubit/OnboardingCubit.dart';
import 'package:graduation_project/view_models/cubits/onBoardingCubit/onBordingStates.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Image.asset('images/Logo.png'),
                    ),
                    TextButton(
                        onPressed: () {
                          OnBoardingCubit.get(context).onSkip(context);
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(color: Colors.grey),
                        ))
                  ],
                )),
            Expanded(
              flex: 14,
              child: PageView.builder(
                  controller: OnBoardingCubit.get(context).pageController,
                  onPageChanged: (value) {
                    OnBoardingCubit.get(context).pageIndex = value;
                    OnBoardingCubit.get(context).onSwipe(value);
                  },
                  itemCount: OnBoardingCubit.get(context).pages.length,
                  itemBuilder: (context, index) {
                    return OnBoardingCubit.get(context).pages[index];
                  }),
            ),
            Expanded(
              flex: 2,
              child: BlocBuilder<OnBoardingCubit, OnBoardingStates>(
                builder: (BuildContext context, state) {
                  if (state is OnBoardingSwipeState) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0;
                            i < OnBoardingCubit.get(context).pages.length;
                            i++)
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 2, right: 2, top: 40),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 150),
                              height:
                                  OnBoardingCubit.get(context).pageIndex == i
                                      ? 10
                                      : 8,
                              width: OnBoardingCubit.get(context).pageIndex == i
                                  ? 10
                                  : 8,
                              decoration: BoxDecoration(
                                  color:
                                      OnBoardingCubit.get(context).onSwipe(i),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                      ],
                    );
                  } else {
                    return const customContainer();
                  }
                },
              ),
            ),
            Expanded(
              flex: 3,
              child: CustomButton(
                  text: 'Next',
                  onClick: () {
                    OnBoardingCubit.get(context).onNext(context);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
