import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/view/Screens/Login_screen.dart';
import 'package:graduation_project/view/custom_widgets/custom_TextField.dart';
import 'package:graduation_project/view/custom_widgets/custom_button.dart';

import 'package:graduation_project/view_models/cubits/LoginCubit/LoginCubit.dart';
import 'package:graduation_project/view_models/cubits/LoginCubit/LoginStates.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      body: BlocBuilder<LoginCubit, LoginStates>(
        builder: (BuildContext context, state) {
          return SafeArea(
            child: Form(
              key: LoginCubit.get(context).formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Login using your email and password',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    CustomeTextField(
                      icon: Icon(Icons.email_outlined),
                      hintText: 'Email',
                      onSaved: (value) {
                        if (value != null)
                          LoginCubit.get(context).user!.email = value;
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
                      hide: LoginCubit.get(context).hide,
                      passwordIcon: IconButton(
                        icon: LoginCubit.get(context).hide == true
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: LoginCubit.get(context).passVisibility,
                      ),
                      // passwordHint: 'must be at least 8 characters',
                      icon: Icon(Icons.lock_outlined),
                      hintText: 'Password',
                      onSaved: (value) {
                        if (value != null)
                          LoginCubit.get(context).user!.password = value;
                      },
                      onValidate: (String? value) {
                        if (value!.length < 8) {
                          return 'password must be at least 8 characters';
                        }

                        return '';
                      },
                    ),
                    SizedBox(
                      height: 136,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don\'t have an account? ",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text('Register now'))
                      ],
                    ),
                    CustomButton(
                      text: 'Login',
                      onClick: () {
                        LoginCubit.get(context).onCreateAccount(context);
                      },
                    ),
                    Center(
                      child: Text(
                        '______  Or login with Account  ______ ',
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
