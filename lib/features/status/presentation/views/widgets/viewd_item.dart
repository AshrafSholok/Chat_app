import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/status/presentation/views/widgets/viewed_picture.dart';
import 'package:flutter/material.dart';

class ViewdItem extends StatelessWidget {
  const ViewdItem({super.key, required this.name, required this.time});
  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ViewedPicture(),
          const SizedBox(
            width: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(
                name,
                style: Styles.textStyle24.copyWith(fontSize: 15),
              ),
              Text(
                time,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
