import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_redesign/bloc/theme_cubit.dart';
import 'package:spotify_redesign/screens/home_screen.dart';
import 'package:spotify_redesign/screens/sign_up_screen.dart';
import 'package:spotify_redesign/widgets/login_widgets.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool darkMode = true;

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
                    'Choose Mode',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder(
                      bloc: BlocProvider.of<ThemeCubit>(context),
                      builder: (context, ThemeData theme) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                BlocProvider.of<ThemeCubit>(context)
                                    .toggleTheme();
                              },
                              child: theme.brightness == Brightness.dark
                                  ? Image.asset('assets/icons/dark_on.png',
                                      width: 50)
                                  : Image.asset('assets/icons/dark_off.png',
                                      width: 50),
                            ),
                            const SizedBox(width: 32),
                            GestureDetector(
                              onTap: () {
                                BlocProvider.of<ThemeCubit>(context)
                                    .toggleTheme();
                              },
                              child: theme.brightness == Brightness.light
                                  ? Image.asset('assets/icons/light_on.png',
                                      width: 50)
                                  : Image.asset('assets/icons/light_off.png',
                                      width: 50),
                            ),
                          ],
                        );
                      }),
                  const SizedBox(height: 32),
                  GreenButton(
                    text: 'Continue',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
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
