import 'package:chat_app/core/shared widgets/default_text_field.dart';
import 'package:flutter/material.dart';

class SignupUsername extends StatelessWidget {
  const SignupUsername({super.key, required this.nameController});

  final TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return DefaultTextField(
      controller: nameController,
      labelText: 'Enter your name',
      hintText: 'Your Name',
      prefixIcon: Icons.person,
      borderRadius: 12,
      validator: (val){
        if(val!.isEmpty) {
          return 'This Field is Required';
        } 
        else {
            return null;
        }
      },
      keyboardType: TextInputType.name,
    );
  }
}