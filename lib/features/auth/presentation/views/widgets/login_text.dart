import 'package:chat_app/core/routes/routes.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: Styles.textStyle24.copyWith(fontSize: 16),
        ),
        TextButton(
          onPressed: () =>
              Navigator.pushReplacementNamed(context, Routes.login),
          child: Text(
            'Login here',
            style: Styles.textStyle24
                .copyWith(color: ColorsApp.secondryColor, fontSize: 14),
          ),
        )
      ],
    );
  }
}
