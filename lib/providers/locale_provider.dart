import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar_example/utils/constants/shared_prefs_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier() : super(const Locale('en', 'US')) {
    init();
  }

  late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    final List<String>? currentLocale = _prefs.getStringList('currentLocale');
    if (currentLocale == null) {
      await _prefs.setStringList(CURRENT_LOCALE, ['en', 'US']);
      state = const Locale('en', 'US');
    } else {
      state = Locale(currentLocale.first, currentLocale.last);
    }
    debugPrint('Current Locale: ${state.languageCode}-${state.countryCode}');
  }

  void changeLocale(Locale updatedLocale) async {
    if (state == updatedLocale) {
      debugPrint('No changes Made');
      return;
    } else {
      await _prefs.setStringList(CURRENT_LOCALE,
          [updatedLocale.languageCode, updatedLocale.countryCode ?? '']);
      state = updatedLocale;
    }
    debugPrint(
        'Updated the locale to ${state.languageCode}-${state.countryCode}');
  }
}

final localProvider =
    StateNotifierProvider<LocaleNotifier, Locale>((ref) => LocaleNotifier());
