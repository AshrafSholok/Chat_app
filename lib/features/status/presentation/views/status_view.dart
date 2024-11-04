import 'package:chat_app/core/constants/asset_icons.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/status/presentation/views/widgets/status_body.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'WhatsApp',
          style: Styles.textStyle24,
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
      ),
      body: const StatusBody(),
    );
  }
}
