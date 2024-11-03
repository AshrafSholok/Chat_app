import 'package:chat_app/core/routes/app_routing.dart';
import 'package:chat_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
      ),
      onGenerateRoute: AppRouting.generateRoute,
      initialRoute: Routes.init,
      // home: const HomeView(),
    );
  }
}
