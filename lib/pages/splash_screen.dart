import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:authtentication_app/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Lottie.asset('assets/Animation_lock.json'),
      ),
      nextScreen: const SigninPage(),
      duration: 3500,
      backgroundColor: Colors.white,
    );
  }
}
