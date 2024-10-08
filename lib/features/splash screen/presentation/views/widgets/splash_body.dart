import 'package:chat_app/core/constants/assetes%20images/images.dart';
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
      Image.asset(AssetsImage.logo),
      const Spacer(
        flex: 2,
      ),
      Text('The best chat app of this country', style: Styles.textStyle24),
      const Spacer(
        flex: 1,
      ),
    ],
          ),
        );
  }
}
