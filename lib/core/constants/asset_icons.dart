import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

class AssetIcons {
  static const Widget email = Icon(Icons.email);
  static const Widget lock = Icon(Icons.lock);
  static const Widget eye = Icon(Icons.remove_red_eye);
  static const Widget chats = Icon(Icons.chat, color: ColorsApp.secondryColor);
  static const Widget status =
      Icon(Icons.lightbulb_circle_outlined, color: ColorsApp.secondryColor);
  static const Widget calls = Icon(Icons.call, color: ColorsApp.secondryColor);
  static const Widget newChat = Icon(Icons.chat, color: Colors.white);

  static const Widget search = Icon(Icons.search);
  static const Widget moreVert = Icon(Icons.more_vert);
}
