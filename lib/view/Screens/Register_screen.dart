import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/view/Screens/Login_screen.dart';
import 'package:graduation_project/view/custom_widgets/custom_TextField.dart';
import 'package:graduation_project/view/custom_widgets/custom_button.dart';

import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterCubit.dart';
import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterStates.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            child: Form(
              key: RegisterCubit.get(context).formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Create an account to find your dream job',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    CustomeTextField(
                      hoverColor: Colors.blue,
                      icon: Icon(Icons.person_outline_sharp),
                      hintText: 'Username',
                      onSaved: (value) {
                        if (value != null)
                          RegisterCubit.get(context).user!.username = value;
                      },
                      onValidate: (String? value) {
                        if (value == null || value.isEmpty)
                          return 'Enter your Username';
                        return '';
                      },
                    ),
                    CustomeTextField(
                      icon: Icon(Icons.email_outlined),
                      hintText: 'Email',
                      onSaved: (value) {
                        if (value != null)
                          RegisterCubit.get(context).user!.email = value;
                      },
                      onValidate: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your Email';
                        } else if (!value.contains('@') ||
                            !value.contains('.com')) {
                          return 'wrong email format';
                        }
                        return '';
                      },
                    ),
                    CustomeTextField(
                      hide: RegisterCubit.get(context).hide,
                      passwordIcon: IconButton(
                        icon: RegisterCubit.get(context).hide == true
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: RegisterCubit.get(context).passVisibility,
                      ),
                      passwordHint: 'must be at least 8 characters',
                      icon: Icon(Icons.lock_outlined),
                      hintText: 'Password',
                      onSaved: (value) {
                        if (value != null)
                          RegisterCubit.get(context).user!.password = value;
                      },
                      onValidate: (String? value) {
                        if (value!.length < 8) {
                          return 'password must be at least 8 characters';
                        }

                        return '';
                      },
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'already have an account? ',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text('Login'))
                      ],
                    ),
                    CustomButton(
                      text: 'Create account',
                      onClick: () {
                        RegisterCubit.get(context).onCreateAccount(context);
                      },
                    ),
                    Center(
                      child: Text(
                        '______  Or sign up with Account  ______ ',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 180,
                          height: 100,
                          child: Image.asset('images/google.png'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 180,
                          height: 100,
                          child: Image.asset('images/facebook.png'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
