import 'package:chat_app/core/routes/routes.dart';
import 'package:chat_app/core/shared%20widgets/custom_button2.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultButton(
        label: 'Log in',
        backgroundColor: ColorsApp.secondryColor,
        width: double.infinity,
        height: 40,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Validation Successful')),
            );
            Navigator.pushReplacementNamed(context, Routes.home);
          }
        },
      ),
    );
  }
}
