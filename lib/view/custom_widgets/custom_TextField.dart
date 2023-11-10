import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  final String? hintText;
  final String? passwordHint;
  final Function(String?) onSaved;
  final String Function(String?) onValidate;
  final TextInputType type;
  final Icon? icon;
  final passwordIcon;
  final Color? hoverColor;
  final bool hide;
  const CustomeTextField(
      {super.key,
      this.hintText,
      required this.onSaved,
      required this.onValidate,
      this.type = TextInputType.text,
      this.icon,
      this.hoverColor,
      this.passwordHint,
      this.passwordIcon,
      this.hide = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
        child: TextFormField(
          obscureText: hide,
          style: const TextStyle(color: Colors.black),
          keyboardType: type,
          onSaved: onSaved,
          validator: onValidate,
          decoration: InputDecoration(
              suffixIcon: passwordIcon,
              prefixIcon: icon,
              helperText: passwordHint,
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.red)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.red)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.blue)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.blueGrey)),
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.blueGrey, fontSize: 15)),
        ),
      ),
    );
  }
}
