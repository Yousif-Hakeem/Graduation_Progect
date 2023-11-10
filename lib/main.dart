import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/view/Screens/major_select_screen.dart';
import 'package:graduation_project/view_models/cubits/LoginCubit/LoginCubit.dart';
import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterCubit.dart';
import 'package:graduation_project/view_models/cubits/onBoardingCubit/OnboardingCubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnBoardingCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => LoginCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MajorSelectScreen(),
        // onGenerateRoute: Routing.generateRoute,
      ),
    );
  }
}
