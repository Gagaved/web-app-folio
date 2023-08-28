
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webappfolio/presentation/app/navigator.dart';
import 'package:webappfolio/presentation/app/router.dart';
import 'package:webappfolio/presentation/themes/theme.dart';

final themeProvider = StateProvider<ThemeMode>((ref)  {
  Brightness value = PlatformDispatcher.instance.platformBrightness;
  switch (value) {
    case Brightness.light:
      return ThemeMode.light;
    case Brightness.dark:
      return ThemeMode.dark;
  }
});

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Ignat Morozov',
      theme: AppThemeDataHolder.appThemeData,
      darkTheme: AppThemeDataHolder.appDarkThemeData,
      themeMode: themeMode,
      onGenerateRoute: AppRouter.generateRoute
      //const AppNavigator(),
    );
  }
}