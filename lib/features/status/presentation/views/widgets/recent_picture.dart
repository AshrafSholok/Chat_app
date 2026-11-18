import 'package:chat_app/core/constants/asset_images.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

class RecentPicture extends StatelessWidget {
  const RecentPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorsApp.secondryColor,
      ),
      child: Center(
        child: Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(AssetsImage.profile)),
          ),
        ),
      ),
    );
  }
}
