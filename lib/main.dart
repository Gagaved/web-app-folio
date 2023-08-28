import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webappfolio/di/locator.dart';
import 'package:webappfolio/presentation/app/app.dart';
void main() {
  setupLocator();
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(
    const ProviderScope(
      child: AppWidget(),
    ),
  );
}