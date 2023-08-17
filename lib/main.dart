import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webappfolio/di/locator.dart';
import 'package:webappfolio/presentation/navigations/router.dart';
import 'package:webappfolio/presentation/themes/theme.dart';
void main() {
  setupLocator();
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ignat Morozov',
      initialRoute: '/',
      theme: AppThemeDataHolder.appThemeData,
      darkTheme: AppThemeDataHolder.appDarkThemeData,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}