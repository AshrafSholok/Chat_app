import 'package:chat_app/core/routes/routes.dart';
import 'package:chat_app/features/auth/presentation/views/login_view.dart';
import 'package:chat_app/features/auth/presentation/views/signup_view.dart';
import 'package:chat_app/features/home/presentation/views/home_view.dart';
import 'package:chat_app/features/splash%20screen/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';



class AppRouting {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.init:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignupView());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      // case Routes.profile:
      //   return MaterialPageRoute(builder: (_) => const ProfileView());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}