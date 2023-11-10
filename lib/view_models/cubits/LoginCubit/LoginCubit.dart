import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/models/User.dart';
import 'package:graduation_project/view/Screens/major_select_screen.dart';
import 'package:graduation_project/view_models/cubits/LoginCubit/LoginStates.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitState());
  static LoginCubit get(context) => BlocProvider.of(context);
  TheUser? user = TheUser();
  bool hide = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  SnackBar successSnackbar = SnackBar(
    content: Text('Account created successfully!'),
    backgroundColor: Colors.green,
  );
  SnackBar failSnackbar = SnackBar(
    content: Text('Something went wrong!'),
    backgroundColor: Colors.red,
  );
  void onCreateAccount(BuildContext context) {
    bool valid = formKey.currentState!.validate();
    if (valid) {
      // emit(LoginLoadingState());

      formKey.currentState!.save();
      formKey.currentState!.reset();
      emit(LoginSuccessState());
      print('saved');

      ScaffoldMessenger.of(context).showSnackBar(successSnackbar);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MajorSelectScreen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(failSnackbar);
      emit(LoginFailState());
    }
  }

  void passVisibility() {
    hide = !hide;
    emit(LoginVisibilityState());
  }
}
