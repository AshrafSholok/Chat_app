import 'package:chat_app/core/constants/asset_icons.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/features/chats/presentation/views/widgets/chats_body.dart';
import 'package:flutter/material.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ChatsBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsApp.secondryColor,
        elevation: 0,
        onPressed: () {},
        child: AssetIcons.newChat,
      ),
    );
  }
}
