import 'package:chat_app/features/auth/presentation/views/login_view.dart';
import 'package:chat_app/features/splash%20screen/presentation/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() =>  _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
     Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginView()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SplashBody());
  }
}


