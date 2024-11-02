// ignore_for_file: body_might_complete_normally_nullable

import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      required this.textOnboard,
      this.suffixIcon,
      this.prefixIcon});
  String hintText;
  String textOnboard;
  Widget? suffixIcon;
  Widget? prefixIcon;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 5),
          child: prefixIcon,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 5),
          child: suffixIcon,
        ),
        labelText: textOnboard,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: ColorsApp.secondryColor,
          ),
        ),
      ),
    );
  }
}
