import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

class MessagesNumbers extends StatelessWidget {
  const MessagesNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: ColorsApp.secondryColor, shape: BoxShape.circle),
      child: const Text(
        '2',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
