import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webappfolio/l10n/gen_l10n/app_localizations.dart';
import 'package:webappfolio/presentation/app/router.dart';
import 'package:webappfolio/presentation/themes/theme.dart';

final themeProvider = StateProvider<ThemeMode>((ref) {
  Brightness value = PlatformDispatcher.instance.platformBrightness;
  switch (value) {
    case Brightness.light:
      return ThemeMode.light;
    case Brightness.dark:
      return ThemeMode.dark;
  }
});

final localeProvider = StateProvider<Locale>((ref) {
  var platformLocale = PlatformDispatcher.instance.locale;
  for (var locale in AppLocalizations.supportedLocales) {
    if (locale.languageCode == platformLocale.languageCode) {
      return locale;
    }
  }
  return AppLocalizations.supportedLocales.first;
});

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final locale = ref.watch(localeProvider);
    return MaterialApp(
        title: 'Ignat Morozov',
        theme: AppThemeDataHolder.appThemeData,
        darkTheme: AppThemeDataHolder.appDarkThemeData,
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        locale: locale,
        themeMode: themeMode,
        onGenerateRoute: AppRouter.generateRoute
        //const AppNavigator(),
        );
  }
}
