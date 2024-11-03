import 'package:chat_app/features/chats/presentation/views/widgets/chat_item.dart';
import 'package:flutter/material.dart';

class ChatsBody extends StatelessWidget {
  const ChatsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChatItem(
          name: 'rowan',
          message: '01011873749',
          date: '12:00 PM',
        ),
        ChatItem(
          name: 'Mohab Ali',
          message: '01011873749',
          date: '12:00 PM',
        ),
        ChatItem(
          name: 'Marwan Ali',
          message: '01011873749',
          date: '12:00 PM',
        ),
      ],
    );
  }
}
