import 'package:chat_app/features/status/presentation/views/widgets/recent_item.dart';
import 'package:flutter/material.dart';

class RecentUpdate extends StatelessWidget {
  const RecentUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        RecentItem(
          name: 'Marwan Ali',
          time: 'Today, 12:00 AM',
        ),
        RecentItem(
          name: 'Marwan Ali',
          time: 'Today, 12:00 AM',
        ),
        RecentItem(
          name: 'Marwan Ali',
          time: 'Today, 12:00 AM',
        ),
        RecentItem(
          name: 'Marwan Ali',
          time: 'Today, 12:00 AM',
        ),
        RecentItem(
          name: 'Marwan Ali',
          time: 'Today, 12:00 AM',
        ),
      ],
    );
  }
}
