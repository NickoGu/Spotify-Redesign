import 'package:flutter/material.dart';
import 'package:spotify_redesign/screens/theme_screen.dart';

class PresentationScreen extends StatelessWidget {
  const PresentationScreen({super.key});

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
                  const Text(
                    'Music for everyone.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1ED760),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Nulla Lorem mollit cupidatat irure. Laborum magna nulla duis ullamco cillum dolor. Voluptate exercitation incididunt aliquip deserunt reprehenderit elit laborum. ',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThemeScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF1ED760),
                      ),
                      child: const Text('Get Started',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
