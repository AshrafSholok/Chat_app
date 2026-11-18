import 'package:chat_app/core/constants/asset_images.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Image.asset(AssetsImage.logo, width: 300, height: 300),
          Text('WhatsApp', style: Styles.textStyle10.copyWith(fontSize: 25)),
          const Spacer(
            flex: 1,
          ),
          Text('The best chat app of this country',
              style: Styles.textStyle24.copyWith(fontSize: 20)),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
