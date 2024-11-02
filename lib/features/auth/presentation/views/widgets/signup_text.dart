import 'package:chat_app/core/routes/routes.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class SignupText extends StatelessWidget {
  const SignupText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: Styles.textStyle24.copyWith(fontSize: 16),
        ),
        TextButton(
          onPressed: () =>
              Navigator.pushReplacementNamed(context, Routes.signUp),
          child: Text(
            'Register here',
            style: Styles.textStyle24
                .copyWith(color: ColorsApp.primaryColor, fontSize: 14),
          ),
        )
      ],
    );
  }
}
