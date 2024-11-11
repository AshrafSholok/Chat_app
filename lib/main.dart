import 'package:chat_app/core/routes/app_routing.dart';
import 'package:chat_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  // Ensure that Firebase is initialized
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
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
