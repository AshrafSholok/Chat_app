import 'package:chat_app/core/constants/asset_icons.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: ColorsApp.secondryColor,
        elevation: 0,
        onPressed: () {},
        child: AssetIcons.newChat,
      );
  }
}