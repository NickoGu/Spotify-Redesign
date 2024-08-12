import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_redesign/bloc/theme_cubit.dart';
import 'package:spotify_redesign/screens/home_screen.dart';
import 'package:spotify_redesign/screens/presentation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: state,
          home: const PresentationScreen(),
        );
      }),
    );
  }
}
