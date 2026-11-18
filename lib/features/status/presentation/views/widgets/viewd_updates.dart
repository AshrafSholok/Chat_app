import 'package:chat_app/features/status/presentation/views/widgets/viewd_item.dart';
import 'package:flutter/material.dart';

class ViewdUpdates extends StatelessWidget {
  const ViewdUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        ViewdItem(
          name: 'Marwan Ali',
          time: 'Today, 12:00 AM',
        ),
        ViewdItem(
          name: 'Marwan Ali',
          time: 'Today, 12:00 AM',
        ),
      ],
    );
  }
}
