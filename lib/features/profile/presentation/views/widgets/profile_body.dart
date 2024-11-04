import 'package:chat_app/core/shared%20widgets/custom_button.dart';
import 'package:chat_app/core/shared%20widgets/default_text_field.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/picture.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Divider(),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(child: Picture()),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'name',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: DefaultTextField(
            labelText: 'Marwan Ali',
            borderRadius: 12,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Phone number',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: DefaultTextField(
            labelText: '0123456789',
            borderRadius: 12,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: DefaultButton(
            label: 'Save Profile',
            onPressed: () {},
            backgroundColor: ColorsApp.secondryColor,
            width: double.infinity,
            icon: Icons.save,
          ),
        )
      ],
    );
  }
}
