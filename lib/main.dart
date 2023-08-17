import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:test_web/di/locator.dart';
import 'package:test_web/presentation/navigations/router.dart';
import 'package:test_web/presentation/themes/theme.dart';
import 'package:test_web/presentation/themes/theme_controller.dart';
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
      title: 'Your Landing Page',
      initialRoute: '/',
      theme: AppThemeDataHolder.appThemeData,
      darkTheme: AppThemeDataHolder.appDarkThemeData,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}