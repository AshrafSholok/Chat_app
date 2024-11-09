import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorsApp.secondryColor,
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
