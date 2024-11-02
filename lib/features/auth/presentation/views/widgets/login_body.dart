import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_button.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_tittle.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_text.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  LoginBody({super.key});

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const LogoWidget(),
                const LoginTittle(),
                const SizedBox(
                  height: 50,
                ),
                EmailField(emailController: emailController),
                const SizedBox(
                  height: 25,
                ),
                PasswordTextField(
                  passwordController: passwordController,
                ),
                const SizedBox(
                  height: 50,
                ),
                LoginButton(formKey: formKey),
                const SignupText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
