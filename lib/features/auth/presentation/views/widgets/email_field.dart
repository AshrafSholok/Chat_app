import 'package:chat_app/core/shared%20widgets/default_text_field2.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key, required this.emailController});

  final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return DefaultTextField(
      controller: emailController,
      labelText: 'Enter your email',
      hintText: 'Your Email',
      prefixIcon: Icons.email,
      borderRadius: 12,
      validator: (val){
        if(val!.isEmpty) {
          return 'This Field is Required';
        } else if (!val.contains('@')){
          return 'Email not valid';
        }
        else {
            return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
    );
  }
}