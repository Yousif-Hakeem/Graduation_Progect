import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/view/Screens/Register_screen.dart';
import 'package:graduation_project/view/custom_widgets/onBoarding_1.dart';
import 'package:graduation_project/view/custom_widgets/onBoarding_2.dart';
import 'package:graduation_project/view/custom_widgets/onBoarding_3.dart';
import 'package:graduation_project/view_models/cubits/onBoardingCubit/onBordingStates.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates> {
  OnBoardingCubit() : super(OnBoardingInitState());
  static OnBoardingCubit get(context) => BlocProvider.of(context);
  int pageIndex = 0;
  PageController pageController = PageController();
  List<Widget> pages = [
    const OnBoarding1(),
    const OnBoarding2(),
    const OnBoarding3()
  ];

  Color? onSwipe(int index) {
    emit(OnBoardingSwipeState());
    return pageIndex == index ? Colors.blueAccent[700] : Colors.blueAccent[100];
  }

  void onNext(BuildContext context) {
    pageIndex == pages.length - 1
        ? Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterScreen()))
        : pageController.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  BuildContext onSkip(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterScreen()));
    return context;
  }
}





// void onSwipe(int index) {
  //   pageIndex == index;
  //   emit(OnBoardingSwipeState());
  // }