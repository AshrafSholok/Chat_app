import 'package:chat_app/core/constants/asset_images.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  const Picture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(AssetsImage.profile))),
      child: Align(
        alignment: const Alignment(1.0, 1.0),
        child: Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsApp.secondryColor,
          ),
          child: Center(
            child: Container(
              width: 28,
              height: 28,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsApp.secondryColor,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.white,
                  size: 14,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
