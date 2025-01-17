import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theme_demo/components/box.dart';
import 'package:theme_demo/components/button.dart';
import 'package:theme_demo/theme/theme_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: Center(
        child: Box(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              ref.read(themeNotifierProvider.notifier).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
