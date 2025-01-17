import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
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
  ThemeData build() {
    return _themeData;
  }

  void toggleTheme() {
    if (state == lightMode) {
      state = darkMode;
    } else {
      state = lightMode;
    }
  }
}
