import 'package:flutter/material.dart';
import 'package:spotify_redesign/screens/home_screen.dart';
import 'package:spotify_redesign/widgets/login_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/logo.png', height: 30),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 32),
              const Text(
                "Log In",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text("If you need any support click here",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200)),
              const SizedBox(height: 16),
              const CustomTextField(hintText: 'Enter username or email'),
              const SizedBox(height: 8),
              const CustomTextField(hintText: 'Password'),
              const SizedBox(height: 16),
              const Text("¿Forgot your password?",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200)),
              const SizedBox(height: 16),
              GreenButton(
                  text: 'Log In',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  }),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OptionLogin(
                      image: Image.asset(
                    'assets/icons/google_icon.png',
                    height: 24,
                  )),
                  OptionLogin(
                      image: Image.asset(
                    'assets/icons/facebook_icon.png',
                    height: 24,
                  )),
                  OptionLogin(
                      image: Image.asset(
                    'assets/icons/apple_icon.png',
                    height: 24,
                  ))
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
