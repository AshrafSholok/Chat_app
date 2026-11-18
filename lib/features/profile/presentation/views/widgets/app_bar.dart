import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

class AppBarProfile extends StatelessWidget {
  const AppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: ColorsApp.secondryColor, // Change this to your desired color
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }
}