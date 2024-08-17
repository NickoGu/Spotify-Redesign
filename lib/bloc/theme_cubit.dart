import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(ThemeData.dark());

  void toggleTheme() {
    emit(state.brightness == Brightness.light
        ? ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Montserrat',
            colorScheme: const ColorScheme.dark(
              primary: Color(0XFF1ED760),
              secondary: Color(0XFF1ED760),
            ),
          )
        : ThemeData(
            brightness: Brightness.light,
            fontFamily: 'Montserrat',
            colorScheme: const ColorScheme.light(
              primary: Color(0XFF1ED760),
              secondary: Color(0XFF1ED760),
            ),
          ));

    print("Tema: ${state.brightness}");
  }
}
