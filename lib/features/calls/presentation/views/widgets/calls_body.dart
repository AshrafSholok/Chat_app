import 'package:chat_app/features/calls/presentation/views/widgets/call_item.dart';
import 'package:chat_app/features/calls/presentation/views/widgets/calls_bar.dart';
import 'package:chat_app/features/calls/presentation/views/widgets/favorite_calls.dart';
import 'package:flutter/material.dart';

class CallsBody extends StatelessWidget {
  const CallsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CallsBar(),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Favorits',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FavoriteCalls(),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Recent calls',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CallItem(
            name: 'Mohamed Ali',
            time: 'Today, 12:00 PM',
          ),
          CallItem(
            name: 'Mohamed Ali',
            time: 'Today, 12:00 PM',
          ),
          CallItem(
            name: 'Ahmed Ali',
            time: 'Today, 12:00 PM',
          ),
          CallItem(
            name: 'Marwan Ali',
            time: 'Today, 12:00 PM',
          ),
          CallItem(
            name: 'Marwan Ali',
            time: 'Today, 12:00 PM',
          ),
          CallItem(
            name: 'Marwan Ali',
            time: 'Today, 12:00 PM',
          ),
        ],
      ),
    );
  }
}
