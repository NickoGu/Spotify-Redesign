import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_redesign/bloc/theme_cubit.dart';
import 'package:spotify_redesign/screens/home_screen.dart';
import 'package:spotify_redesign/screens/login_screen.dart';
import 'package:spotify_redesign/screens/register_screen.dart';
import 'package:spotify_redesign/widgets/login_widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0E0E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF0F0E0E),
        title: Image.asset('assets/logo.png', height: 30),
      ),
      body: Center(
        child: Stack(
          children: [
            Image.asset('assets/login_image.png'),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 42.0, vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 32),
                  GreenButton(
                      text: 'Sign up free',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      }),
                  CustomBorderButton(
                      leading: Image.asset('assets/icons/phone_icon.png',
                          height: 20),
                      text: 'Continue with phone number',
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      }),
                  CustomBorderButton(
                      leading: Image.asset('assets/icons/google_icon.png',
                          height: 20),
                      text: 'Continue with Google',
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      }),
                  CustomBorderButton(
                      leading: Image.asset('assets/icons/facebook_icon.png',
                          height: 20),
                      text: 'Continue with Facebook',
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      }),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
