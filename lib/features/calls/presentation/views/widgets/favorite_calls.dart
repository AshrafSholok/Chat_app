import 'package:chat_app/features/calls/presentation/views/widgets/favorite_icon.dart';
import 'package:flutter/material.dart';

class FavoriteCalls extends StatelessWidget {
  const FavoriteCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: FavoriteIcon(),
        ),
        Text(
          'Add to favorite',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
