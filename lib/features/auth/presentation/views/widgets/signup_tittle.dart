import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class SignupTittle extends StatelessWidget {
  const SignupTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Register to new account',
      style: Styles.textStyle24,
      textAlign: TextAlign.center,
    );
  }
}
