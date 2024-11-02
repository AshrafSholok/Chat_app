import 'package:chat_app/core/shared%20widgets/default_text_field2.dart';
import 'package:flutter/material.dart';


class PhoneField extends StatelessWidget {
  const PhoneField({super.key, required this.phoneController});

  final TextEditingController phoneController;
  @override
  Widget build(BuildContext context) {
    return DefaultTextField(
      controller: phoneController,
      labelText: 'Enter your phone',
      hintText: 'Your phone',
      prefixIcon: Icons.phone,
      borderRadius: 12,
      validator: (val){
        if(val!.isEmpty) {
          return 'This Field is Required';
        } 
        else {
            return null;
        }
      },
      keyboardType: TextInputType.phone,
    );
  }
}