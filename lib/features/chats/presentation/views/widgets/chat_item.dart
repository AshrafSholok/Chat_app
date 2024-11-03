import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/chats/presentation/views/widgets/messages_numbers.dart';
import 'package:chat_app/features/chats/presentation/views/widgets/profile_picture.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.name,
    required this.message,
    required this.date,
  });

  final String name;
  final String message;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 65,
        child: Row(
          children: [
            const ProfilePicture(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: Styles.textStyle10
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            message,
                            style: const TextStyle(
                                fontSize: 18, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(date),
                        const SizedBox(
                          height: 5,
                        ),
                        const MessagesNumbers(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
