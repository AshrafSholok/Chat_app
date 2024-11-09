import 'package:chat_app/features/status/presentation/views/widgets/my_status.dart';
import 'package:chat_app/features/status/presentation/views/widgets/recent_update.dart';
import 'package:chat_app/features/status/presentation/views/widgets/status_bar.dart';
import 'package:chat_app/features/status/presentation/views/widgets/viewd_updates.dart';
import 'package:flutter/material.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatusBar(),
          Padding(
            padding: EdgeInsets.only(left: 12, top: 15),
            child: MyStatus(),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text(
              'Recent updates',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, top: 10),
            child: RecentUpdate(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text(
              'Viewed updates',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, top: 10),
            child: ViewdUpdates(),
          ),
        ],
      ),
    );
  }
}
