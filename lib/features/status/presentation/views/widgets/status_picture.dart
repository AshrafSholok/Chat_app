import 'package:chat_app/core/constants/asset_images.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

class StatusPicture extends StatelessWidget {
  const StatusPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(AssetsImage.profile))),
      child: Align(
        alignment: const Alignment(1.2, 1.2),
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
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: ColorsApp.secondryColor,
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
