import 'package:chat_app/core/constants/assetes%20images/images.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/auth/presentation/views/login_view.dart';
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
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Image.asset(AssetsImage.logo),
          const Spacer(
            flex: 2,
          ),
          Text('The best chat app of this country', style: Styles.textStyle24),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    ));
  }
}
