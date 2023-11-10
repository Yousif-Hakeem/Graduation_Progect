import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/models/User.dart';
import 'package:graduation_project/view/Screens/major_select_screen.dart';
import 'package:graduation_project/view_models/cubits/RegisterCubit.dart/RegisterStates.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitState());
  static RegisterCubit get(context) => BlocProvider.of(context);
  TheUser? user = TheUser();
  bool hide = true;
  bool trigger1 = true;
  bool trigger2 = true;
  bool trigger3 = true;
  bool trigger4 = true;
  bool trigger5 = true;
  bool trigger6 = true;
  bool trigger7 = true;
  bool trigger8 = true;
  bool trigger9 = true;
  bool trigger10 = true;
  bool trigger11 = true;
  bool trigger12 = true;
  bool trigger13 = true;
  bool trigger14 = true;
  bool trigger15 = true;
  bool disabled = true;
  bool illustratordisabled = true;
  bool devDisabled = true;
  bool managerDisabled = true;
  bool iTdisabled = true;
  bool analyticDisabled = true;
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
      // emit(RegisterLoadingState());

      formKey.currentState!.save();
      formKey.currentState!.reset();
      emit(RegisterSuccessState());
      print('saved');

      ScaffoldMessenger.of(context).showSnackBar(successSnackbar);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MajorSelectScreen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(failSnackbar);
      emit(RegisterFailState());
    }
  }

  void passVisibility() {
    hide = !hide;
    emit(RegisterVisibilityState());
  }

  void enableButton() {
    disabled = !disabled;
    emit(RegisterEnableButtonState());
  }

  void enableIlustratorButton() {
    illustratordisabled = !illustratordisabled;
    emit(RegisterEnableButtonState());
  }

  void enableDevButton() {
    devDisabled = !devDisabled;
    emit(RegisterEnableButtonState());
  }

  void enableManagerButton() {
    managerDisabled = !managerDisabled;
    emit(RegisterEnableButtonState());
  }

  void enableITButton() {
    iTdisabled = !iTdisabled;
    emit(RegisterEnableButtonState());
  }

  void enableAnalyticButton() {
    analyticDisabled = !analyticDisabled;
    emit(RegisterEnableButtonState());
  }

  void enable1() {
    trigger1 = !trigger1;
    emit(RegisterEnableButtonState());
  }

  void enable2() {
    trigger2 = !trigger2;
    emit(RegisterEnableButtonState());
  }

  void enable3() {
    trigger3 = !trigger3;
    emit(RegisterEnableButtonState());
  }

  void enable4() {
    trigger4 = !trigger4;
    emit(RegisterEnableButtonState());
  }

  void enable5() {
    trigger5 = !trigger5;
    emit(RegisterEnableButtonState());
  }

  void enable6() {
    trigger6 = !trigger6;
    emit(RegisterEnableButtonState());
  }

  void enable7() {
    trigger7 = !trigger7;
    emit(RegisterEnableButtonState());
  }

  void enable8() {
    trigger8 = !trigger8;
    emit(RegisterEnableButtonState());
  }

  void enable9() {
    trigger9 = !trigger9;
    emit(RegisterEnableButtonState());
  }

  void enable10() {
    trigger10 = !trigger10;
    emit(RegisterEnableButtonState());
  }

  void enable11() {
    trigger11 = !trigger11;
    emit(RegisterEnableButtonState());
  }

  void enable12() {
    trigger12 = !trigger12;
    emit(RegisterEnableButtonState());
  }

  void enable13() {
    trigger13 = !trigger13;
    emit(RegisterEnableButtonState());
  }

  void enable14() {
    trigger14 = !trigger14;
    emit(RegisterEnableButtonState());
  }

  void enable15() {
    trigger15 = !trigger15;
    emit(RegisterEnableButtonState());
  }
}
