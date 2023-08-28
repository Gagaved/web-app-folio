import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class ScienceStyle extends ThemeExtension<ScienceStyle> {
  final Color? scienceColor;

  final Color? scienceBackgroundColor;

  final Color? scienceTintBackgroundColor;

  const ScienceStyle({
    this.scienceColor,
    this.scienceBackgroundColor,
    this.scienceTintBackgroundColor,
  });

  @override
  ScienceStyle copyWith({
    final Color? scienceColor,
    final Color? scienceBackgroundColor,
    final Color? scienceTintBackgroundColor,
  }) {
    return ScienceStyle(
      scienceColor: scienceColor ?? this.scienceColor,
      scienceBackgroundColor:
          scienceBackgroundColor ?? this.scienceBackgroundColor,
      scienceTintBackgroundColor:
          scienceTintBackgroundColor ?? this.scienceTintBackgroundColor,
    );
  }

  @override
  ScienceStyle lerp(ThemeExtension<ScienceStyle>? other, double t) {
    if (other is! ScienceStyle) {
      return this;
    }
    return ScienceStyle(
        scienceColor: Color.lerp(scienceColor, other.scienceColor, t),
        scienceBackgroundColor:
            Color.lerp(scienceBackgroundColor, other.scienceBackgroundColor, t),
        scienceTintBackgroundColor: scienceTintBackgroundColor);
  }
}

class TaskStyle extends ThemeExtension<TaskStyle> {
  final Color? correctColor;
  final Color? wrongColor;
  final Color? unknownColor;
  final Color? correctOnPrimary;
  final Color? wrongOnPrimary;
  const TaskStyle(
      {this.correctOnPrimary,
      this.wrongOnPrimary,
      this.correctColor,
      this.wrongColor,
      this.unknownColor});

  @override
  TaskStyle copyWith({
    final Color? correctOnPrimary,
    final Color? wrongOnPrimary,
    final Color? correctColor,
    final Color? wrongColor,
    final Color? unknownColor,
  }) {
    return TaskStyle(
      correctOnPrimary: correctOnPrimary ?? this.correctOnPrimary,
      wrongOnPrimary: wrongOnPrimary ?? this.wrongOnPrimary,
      correctColor: correctColor ?? this.correctColor,
      wrongColor: wrongColor ?? this.wrongColor,
      unknownColor: unknownColor ?? this.unknownColor,
    );
  }

  @override
  TaskStyle lerp(ThemeExtension<TaskStyle>? other, double t) {
    if (other is! TaskStyle) {
      return this;
    }
    return TaskStyle(
        correctOnPrimary:
            Color.lerp(correctOnPrimary, other.correctOnPrimary, t),
        wrongOnPrimary: Color.lerp(wrongOnPrimary, other.wrongOnPrimary, t),
        correctColor: Color.lerp(correctColor, other.correctColor, t),
        wrongColor: Color.lerp(wrongColor, other.wrongColor, t),
        unknownColor: unknownColor);
  }
}

class AppThemeDataHolder {
  static ThemeData appThemeData = ThemeData(
     fontFamily: GoogleFonts.roboto().fontFamily,
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      highlightColor: AppColors.highlightColor,
      hoverColor: AppColors.hoverColor,
      focusColor: AppColors.focusColor,
      splashColor: AppColors.splashColor,
      // segmentedButtonTheme: SegmentedButtonThemeData(
      //   style: ButtonStyle(
      //     backgroundColor: MaterialStateProperty.resolveWith<Color>(
      //           (Set<MaterialState> states) {
      //         if (states.contains(MaterialState.selected)){
      //           return AppColors.secondaryColor;
      //         }
      //         return AppColors.surfaceColor;
      //       },
      //     ),
      //   )
      // ),
      cardTheme: const CardTheme(
        surfaceTintColor: Colors.transparent,
        color: AppColors.surfaceColor,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.primaryColor,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.primaryColor,
      ),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
        iconColor: MaterialStateProperty.all<Color>(
          AppColors.primaryColor,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      )),
      inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: AppColors.onSurfaceColor)),
      scrollbarTheme: const ScrollbarThemeData(
        thumbColor: MaterialStatePropertyAll(AppColors.primaryColor),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        primary: AppColors.primaryColor,
        onPrimary: AppColors.onPrimaryColor,
        secondary: AppColors.secondaryColor,
        onSecondary: AppColors.onSecondaryColor,
        error: AppColors.errorColor,
        onError: AppColors.onErrorColor,
        background: AppColors.backgroundColor,
        onBackground: AppColors.onBackgroundColor,
        surface: AppColors.surfaceColor,
        onSurface: AppColors.onSurfaceColor,
      ));

  static final ThemeData appDarkThemeData = ThemeData(
      inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: AppColors.onDarkSurfaceColor)),
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.darkBackgroundColor,
      highlightColor: AppColors.darkHighlightColor,
      cardTheme: const CardTheme(
        surfaceTintColor: Colors.transparent,
        color: AppColors.darkSurfaceColor,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.darkPrimaryColor,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.darkPrimaryColor,
      ),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
        iconColor: MaterialStateProperty.all<Color>(
          AppColors.darkPrimaryColor,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      )),
      scrollbarTheme: const ScrollbarThemeData(
        thumbColor: MaterialStatePropertyAll(AppColors.darkPrimaryColor),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.darkPrimaryColor,
        primary: AppColors.darkPrimaryColor,
        onPrimary: AppColors.onDarkPrimaryColor,
        secondary: AppColors.darkSecondaryColor,
        onSecondary: AppColors.onDarkSecondaryColor,
        error: AppColors.darkErrorColor,
        onError: AppColors.onDarkErrorColor,
        background: AppColors.darkBackgroundColor,
        onBackground: AppColors.onDarkBackgroundColor,
        surface: AppColors.darkSurfaceColor,
        onSurface: AppColors.onDarkSurfaceColor,
      ));
}
