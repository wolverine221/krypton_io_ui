import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/core/app_theme/themedata/themedata.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeData: AppTheme.themes[1], themeMode: ThemeMode.dark)) {
    // on<ChangeTheme>(_onChangeTheme);
    on<ToggleThemeMode>(_onToggleThemeMode);
    on<LoadTheme>(_onLoadTheme);
  }

  Future<void> _onToggleThemeMode(ToggleThemeMode event, Emitter<ThemeState> emit) async {
    ThemeData themeData;

    switch (event.themeMode) {
      case ThemeMode.light:
        themeData = AppTheme.themes[0];
        break;
      case ThemeMode.dark:
        themeData = AppTheme.themes[1];
        break;
      case ThemeMode.system:
      default:
        themeData = AppTheme.themes[0];
        break;
    }

    emit(state.copyWith(themeData: themeData, themeMode: event.themeMode));

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('themeMode', event.themeMode.name);
  }

  Future<void> _onLoadTheme(LoadTheme event, Emitter<ThemeState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final themeModeString = prefs.getString('themeMode') ?? 'system';

    ThemeMode themeMode = ThemeMode.system;
    if (themeModeString == 'light') themeMode = ThemeMode.light;
    if (themeModeString == 'dark') themeMode = ThemeMode.dark;

    final themeData = (themeMode == ThemeMode.dark) ? AppTheme.themes[1] : AppTheme.themes[0];

    emit(state.copyWith(themeData: themeData, themeMode: themeMode, isLoaded: true));
  }
}
