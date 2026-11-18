import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/calls/presentation/views/widgets/calls_picture.dart';
import 'package:flutter/material.dart';

class CallItem extends StatelessWidget {
  const CallItem({super.key, required this.name, required this.time});
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
          const CallsPicture(),
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
              Row(
                children: [
                  const Icon(Icons.call_made, color: Colors.green, size: 17),
                  const SizedBox(
                    width: 5,
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
          const SizedBox(
            width: 140,
          ),
          const Icon(
            Icons.call,
            color: ColorsApp.secondryColor,
            size: 30,
          ),
        ],
      ),
    );
  }
}
