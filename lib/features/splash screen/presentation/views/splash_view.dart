import 'package:chat_app/features/auth/presentation/views/login_view.dart';
import 'package:chat_app/features/splash%20screen/presentation/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashViewState createState() =>  _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
     Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              // ignore: use_build_context_synchronously
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


