import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar_example/utils/constants/shared_prefs_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// ThemeNotifier will store the state of the
/// `ThemeMode` that the app is using
///
/// Initial `state` will be ThemeMode.system
///
/// **_init():** This function will get the `THEME_MODE` from SharedPreferences `_prefs`
///           and update the `state` based on index of the enum `ThemeMode`.
///
/// if the `THEME_MODE` is null then `state` will use system `ThemeMode`
///           and use `setInt` to store the index of `ThemeMode.system`
///
/// **changeTheme():** - This function will take `updatedThemeMode` and change the
///                 `state` and update the `_prefs`.
class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier() : super(ThemeMode.system) {
    _init();
  }
  late final SharedPreferences _prefs;
  Future<void> _init() async {
    _prefs = await SharedPreferences.getInstance();
    int? currentThemeIndex = _prefs.getInt(THEME_MODE);
    if (currentThemeIndex == null) {
      state = ThemeMode.system;
      _prefs.setInt(THEME_MODE, ThemeMode.system.index);
    } else {
      state = ThemeMode.values[currentThemeIndex];
    }
    debugPrint('CurrentTheme: ${state.toString()}');
  }

  void changeTheme(ThemeMode updatedThemeMode) async {
    if (updatedThemeMode == state) {
      debugPrint('changeTheme(): No Changes');
      return;
    } else {
      state = updatedThemeMode;
      await _prefs.setInt(THEME_MODE, updatedThemeMode.index);
      debugPrint('Updated Theme Mode: ${state.toString()}');
    }
  }
}

/// This provider is used to manage the theme of the application
///
/// Usage example:
/// ```dart
/// final themeMode = ref.watch(themeProvider);
/// ```
///
/// To change the ThemeMode to dark, use:
///
/// ```dart
/// ref.read(themeProvider.notifier).changeTheme(ThemeMode.dark);
/// ```
/// This updates the [ThemeMode] and saves the new theme preference to
/// [SharedPreferences].
///
final themeProvider =
    StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) => ThemeNotifier());
