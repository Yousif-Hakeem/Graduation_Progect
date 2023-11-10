import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/view/Screens/getStarted_screen.dart';
import 'package:graduation_project/view/custom_widgets/container2.dart';
import 'package:graduation_project/view/custom_widgets/custom_button.dart';
import 'package:graduation_project/view/custom_widgets/custom_lang_container.dart';
import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterCubit.dart';
import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterStates.dart';

class SelectLangScreen extends StatefulWidget {
  const SelectLangScreen({super.key});

  @override
  State<SelectLangScreen> createState() => _SelectLangScreenState();
}

class _SelectLangScreenState extends State<SelectLangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 20),
            child: Image.asset(
              'images/Logo.png',
              alignment: Alignment.topRight,
            ),
          )
        ],
      ),
      body: BlocBuilder<RegisterCubit, RegisterStates>(
        builder: (BuildContext context, state) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'What are your prefered locations?',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Let us know, where is the work location you want at this time, so we can adjust it",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: MyContainer2(
                          text: 'Work from office',
                          onClick: RegisterCubit.get(context).enable1,
                          containerColor:
                              RegisterCubit.get(context).trigger1 == true
                                  ? Colors.blue[900]
                                  : Colors.grey[200],
                          border: Border.all(),
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: RegisterCubit.get(context).trigger1 == true
                                ? Colors.white
                                : Colors.black54,
                          ),
                        ),
                      ),
                      Flexible(
                        child: MyContainer2(
                          text: 'Remote Work',
                          onClick: RegisterCubit.get(context).enable1,
                          containerColor:
                              RegisterCubit.get(context).trigger1 == true
                                  ? Colors.grey[200]
                                  : Colors.blue[900],
                          border: Border.all(),
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: RegisterCubit.get(context).trigger1 == true
                                ? Colors.black54
                                : Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Select the country you want for your job",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: MyLangContainer(
                          text: 'United States',
                          onClick: RegisterCubit.get(context).enable3,
                          containerColor:
                              RegisterCubit.get(context).trigger3 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/Usa.png'),
                          border: Border.all(
                              color: RegisterCubit.get(context).trigger3 == true
                                  ? Colors.grey
                                  : Colors.blue),
                        ),
                      ),
                      Flexible(
                        child: MyLangContainer(
                          text: 'Malaysia',
                          onClick: RegisterCubit.get(context).enable4,
                          containerColor:
                              RegisterCubit.get(context).trigger4 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/Malaysia.png'),
                          border: Border.all(
                              color: RegisterCubit.get(context).trigger4 == true
                                  ? Colors.grey
                                  : Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: MyLangContainer(
                          text: 'Canada',
                          onClick: RegisterCubit.get(context).enable5,
                          containerColor:
                              RegisterCubit.get(context).trigger5 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/Canada.png'),
                          border: Border.all(
                              color: RegisterCubit.get(context).trigger5 == true
                                  ? Colors.grey
                                  : Colors.blue),
                        ),
                      ),
                      Flexible(
                        child: MyLangContainer(
                          text: 'Poland',
                          onClick: RegisterCubit.get(context).enable6,
                          containerColor:
                              RegisterCubit.get(context).trigger6 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/poland.png'),
                          border: Border.all(
                              color: RegisterCubit.get(context).trigger6 == true
                                  ? Colors.grey
                                  : Colors.blue),
                        ),
                      ),
                      Flexible(
                        child: MyLangContainer(
                          text: 'India',
                          onClick: RegisterCubit.get(context).enable7,
                          containerColor:
                              RegisterCubit.get(context).trigger7 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/India.png'),
                          border: Border.all(
                              color: RegisterCubit.get(context).trigger7 == true
                                  ? Colors.grey
                                  : Colors.blue),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: MyLangContainer(
                          text: 'Vietnam',
                          onClick: RegisterCubit.get(context).enable8,
                          containerColor:
                              RegisterCubit.get(context).trigger8 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/vietnam.png'),
                          border: Border.all(
                              color: RegisterCubit.get(context).trigger8 == true
                                  ? Colors.grey
                                  : Colors.blue),
                        ),
                      ),
                      Flexible(
                        child: MyLangContainer(
                          text: 'Saudi Arabia',
                          onClick: RegisterCubit.get(context).enable10,
                          containerColor:
                              RegisterCubit.get(context).trigger10 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/saudi.png'),
                          border: Border.all(
                              color:
                                  RegisterCubit.get(context).trigger10 == true
                                      ? Colors.grey
                                      : Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: MyLangContainer(
                          text: 'China',
                          onClick: RegisterCubit.get(context).enable9,
                          containerColor:
                              RegisterCubit.get(context).trigger9 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/china.png'),
                          border: Border.all(
                              color: RegisterCubit.get(context).trigger9 == true
                                  ? Colors.grey
                                  : Colors.blue),
                        ),
                      ),
                      Flexible(
                        child: MyLangContainer(
                          text: 'Argentina',
                          onClick: RegisterCubit.get(context).enable11,
                          containerColor:
                              RegisterCubit.get(context).trigger11 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/argantina.png'),
                          border: Border.all(
                              color:
                                  RegisterCubit.get(context).trigger11 == true
                                      ? Colors.grey
                                      : Colors.blue),
                        ),
                      ),
                      Flexible(
                        child: MyLangContainer(
                          text: 'Brazil',
                          onClick: RegisterCubit.get(context).enable12,
                          containerColor:
                              RegisterCubit.get(context).trigger12 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/brazil.png'),
                          border: Border.all(
                              color:
                                  RegisterCubit.get(context).trigger12 == true
                                      ? Colors.grey
                                      : Colors.blue),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: MyLangContainer(
                          text: 'Singapore',
                          onClick: RegisterCubit.get(context).enable13,
                          containerColor:
                              RegisterCubit.get(context).trigger13 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/singapore.png'),
                          border: Border.all(
                              color:
                                  RegisterCubit.get(context).trigger13 == true
                                      ? Colors.grey
                                      : Colors.blue),
                        ),
                      ),
                      Flexible(
                        child: MyLangContainer(
                          text: 'Philipines',
                          onClick: RegisterCubit.get(context).enable14,
                          containerColor:
                              RegisterCubit.get(context).trigger14 == true
                                  ? Colors.grey[100]
                                  : Colors.blue[200],
                          image: Image.asset('images/philipines.png'),
                          border: Border.all(
                              color:
                                  RegisterCubit.get(context).trigger14 == true
                                      ? Colors.grey
                                      : Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  CustomButton(
                      text: 'Next',
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GetStartedScreen()));
                      })
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
