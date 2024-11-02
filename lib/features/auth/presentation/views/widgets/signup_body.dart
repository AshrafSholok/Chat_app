import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_button.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_text.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_tittle.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_button.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_text.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_tittle.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_username.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatelessWidget {
  SignupBody({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
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
                const LogoWidget(),
                const SignupTittle(),
                const SizedBox(
                  height: 25,
                ),
                SignupUsername(nameController: nameController),
                const SizedBox(
                  height: 20,
                ),
                EmailField(emailController: emailController),
                const SizedBox(
                  height: 20,
                ),
                PhoneField(phoneController: phoneController),
                const SizedBox(
                  height: 20,
                ),
                PasswordTextField(
                  passwordController: passwordController,
                ),
                const SizedBox(
                  height: 25,
                ),
                SignupButton(formKey: formKey),
                const LoginText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
