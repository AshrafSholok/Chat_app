import 'package:chat_app/core/constants/asset_icons.dart';
import 'package:chat_app/core/routes/routes.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        'WhatsApp',
        style: Styles.textStyle24,
      ),
      actions: [
        IconButton(
          icon: AssetIcons.search,
          onPressed: () {},
        ),
        PopupMenuButton<String>(
          icon: const Icon(Icons.more_vert, size: 25),
          onSelected: (String result) {
            if (result == 'New Group') {
            } else if (result == 'Profile') {
              Navigator.pushNamed(context, Routes.profile);
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'New Group',
              child: Text('New Group'),
            ),
            PopupMenuItem<String>(
              value: 'Profile',
              child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, Routes.profile),
                  child: const Text('Profile')),
            ),
            const PopupMenuItem<String>(
              value: 'Logout',
              child: Text('Logout'),
            ),
          ],
        ),
      ],
    );
  }
}
