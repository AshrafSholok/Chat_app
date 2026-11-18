import 'package:chat_app/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage(AssetsImage.profile),
    );
  }
}
