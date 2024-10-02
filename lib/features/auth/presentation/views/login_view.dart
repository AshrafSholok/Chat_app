import 'package:chat_app/core/constants/assetes%20images/images.dart';
import 'package:chat_app/core/shared%20widgets/custom_button.dart';
import 'package:chat_app/core/shared%20widgets/custom_text_field.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.asset(AssetsImage.logo),
                ),
                Text(
                  'Log in to your account',
                  style: Styles.textStyle24,
                ),
                const Spacer(
                  flex: 1,
                ),
                CustomTextField(hintText: 'email'),
                const Spacer(
                  flex: 1,
                ),
                CustomTextField(hintText: 'password'),
                const Spacer(
                  flex: 1,
                ),
                CustomButton(text: 'Login'),
                const Spacer(
                  flex: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
