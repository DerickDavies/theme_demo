import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_demo/theme/theme.dart';

part 'theme_notifier.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
  }

  @override
  Future<ThemeData> build() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final isDarkMode = prefs.getBool("isDarkMode");

    if (isDarkMode == null || isDarkMode == false) {
      print("lightmode initially");
      return _themeData;
    } else {
      _themeData = darkMode;
      return _themeData;
    }
  }

  void toggleTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (state == AsyncValue.data(lightMode)) {
      state = AsyncValue.data(darkMode);
      prefs.setBool("isDarkMode", true);
    } else {
      state = AsyncValue.data(lightMode);
      prefs.setBool("isDarkMode", false);
    }
  }
}
