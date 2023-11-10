import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/view/Screens/select_lang_screen.dart';
import 'package:graduation_project/view/custom_widgets/custom_button.dart';
import 'package:graduation_project/view/custom_widgets/custom_container.dart';
import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterCubit.dart';
import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterStates.dart';

class MajorSelectScreen extends StatefulWidget {
  const MajorSelectScreen({super.key});

  @override
  State<MajorSelectScreen> createState() => _MajorSelectScreenState();
}

class _MajorSelectScreenState extends State<MajorSelectScreen> {
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
        builder: (BuildContext context, RegisterStates state) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'What type of work are you intersted in?',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Tell us what you\'re intersted in so we customize the app for your needs",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyContainer(
                        border: Border.all(
                            color: RegisterCubit.get(context).disabled == true
                                ? Colors.grey
                                : Colors.blue),
                        containerColor:
                            RegisterCubit.get(context).disabled == true
                                ? Colors.grey[100]
                                : Colors.blue[200],
                        containerIcon: Icon(
                          Icons.design_services_outlined,
                          color: RegisterCubit.get(context).disabled == true
                              ? Colors.black
                              : Colors.blueAccent,
                        ),
                        text: 'UI/UX Designer',
                        onClick: RegisterCubit.get(context).enableButton,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      MyContainer(
                        border: Border.all(
                            color: RegisterCubit.get(context)
                                        .illustratordisabled ==
                                    true
                                ? Colors.grey
                                : Colors.blue),
                        containerColor:
                            RegisterCubit.get(context).illustratordisabled ==
                                    true
                                ? Colors.grey[100]
                                : Colors.blue[200],
                        containerIcon: Icon(
                          Icons.format_paint_outlined,
                          color:
                              RegisterCubit.get(context).illustratordisabled ==
                                      true
                                  ? Colors.black
                                  : Colors.blueAccent,
                        ),
                        text: 'Illustrator Designer',
                        onClick:
                            RegisterCubit.get(context).enableIlustratorButton,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyContainer(
                        containerColor:
                            RegisterCubit.get(context).devDisabled == true
                                ? Colors.grey[100]
                                : Colors.blue[200],
                        border: Border.all(
                            color:
                                RegisterCubit.get(context).devDisabled == true
                                    ? Colors.grey
                                    : Colors.blue),
                        containerIcon: Icon(
                          Icons.developer_mode_rounded,
                          color: RegisterCubit.get(context).devDisabled == true
                              ? Colors.black
                              : Colors.blueAccent,
                        ),
                        text: 'Developer            ',
                        onClick: RegisterCubit.get(context).enableDevButton,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      MyContainer(
                        border: Border.all(
                            color: RegisterCubit.get(context).managerDisabled ==
                                    true
                                ? Colors.grey
                                : Colors.blue),
                        containerColor:
                            RegisterCubit.get(context).managerDisabled == true
                                ? Colors.grey[100]
                                : Colors.blue[200],
                        containerIcon: Icon(
                          Icons.man,
                          color:
                              RegisterCubit.get(context).managerDisabled == true
                                  ? Colors.black
                                  : Colors.blueAccent,
                        ),
                        text: 'Management       ',
                        onClick: RegisterCubit.get(context).enableManagerButton,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyContainer(
                        border: Border.all(
                            color: RegisterCubit.get(context).iTdisabled == true
                                ? Colors.grey
                                : Colors.blue),
                        containerColor:
                            RegisterCubit.get(context).iTdisabled == true
                                ? Colors.grey[100]
                                : Colors.blue[200],
                        containerIcon: Icon(
                          Icons.computer_outlined,
                          color: RegisterCubit.get(context).iTdisabled == true
                              ? Colors.black
                              : Colors.blueAccent,
                        ),
                        text: 'Information Technology',
                        onClick: RegisterCubit.get(context).enableITButton,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      MyContainer(
                        border: Border.all(
                            color:
                                RegisterCubit.get(context).analyticDisabled ==
                                        true
                                    ? Colors.grey
                                    : Colors.blue),
                        containerColor:
                            RegisterCubit.get(context).analyticDisabled == true
                                ? Colors.grey[100]
                                : Colors.blue[200],
                        containerIcon: Icon(
                          Icons.cloud_done_outlined,
                          color: RegisterCubit.get(context).analyticDisabled ==
                                  true
                              ? Colors.black
                              : Colors.blueAccent,
                        ),
                        text: 'Research and Analytics',
                        onClick:
                            RegisterCubit.get(context).enableAnalyticButton,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                      text: 'Next',
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectLangScreen()));
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
