import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spotify_redesign/screens/presentation_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
      useImmersiveMode: true,
      duration: const Duration(milliseconds: 2000),
      nextScreen: const PresentationScreen(),
      backgroundColor: const Color(0xff3333333),
      splashScreenBody: Center(
        child: Lottie.asset(
          "assets/lottie/splash.json",
          width: 180,
          repeat: false,
        ),
      ),
    );
  }
}
