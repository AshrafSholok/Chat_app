import 'package:chat_app/core/shared%20widgets/default_text_field2.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  PasswordTextFieldState createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextField> {
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextField(
      controller: widget.passwordController,
      labelText: 'Enter your password',
      hintText: 'Your Password',
      prefixIcon: Icons.lock,
      borderRadius: 12,
      obscureText: !isPasswordVisible, // Toggle visibility
      suffixIcon: IconButton(
        icon: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: togglePasswordVisibility, 
      ),
      validator: (val) {
        if (val!.isEmpty) {
          return 'This Field is Required';
        } else if (val.length <8) {
          return 'password too weak';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.visiblePassword,
    );
  }
}