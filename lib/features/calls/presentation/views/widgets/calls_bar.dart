import 'package:chat_app/core/constants/asset_icons.dart';
import 'package:flutter/material.dart';

class CallsBar extends StatelessWidget {
  const CallsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(
        'Calls',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        const SizedBox(
          width: 12,
        ),
        IconButton(
          icon: AssetIcons.search,
          onPressed: () {},
        ),
        IconButton(
          icon: AssetIcons.moreVert,
          onPressed: () {},
        ),
      ],
    );
  }
}
