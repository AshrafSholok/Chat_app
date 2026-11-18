import 'package:chat_app/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class CallsPicture extends StatelessWidget {
  const CallsPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
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
