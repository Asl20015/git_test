import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_test/ui/resurses/colors.dart';
import 'package:git_test/ui/resurses/text.dart';

final darkThemeData = ThemeData(
  scaffoldBackgroundColor: AppColors.backDark,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primary,
  ),
  cardColor: AppColors.cardDark,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.backDark,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    titleTextStyle: AppText.h3.copyWith(color: Colors.white),
    surfaceTintColor: AppColors.backDark,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
  dividerColor: AppColors.greyColorDark,
  primaryColor: AppColors.primary,
  useMaterial3: true,
  textTheme: TextTheme(
    bodyMedium: AppText.body.copyWith(color: Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.backDark,
    labelStyle: AppText.body,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.greyColorDark,
        width: 1,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.greyColorDark,
        width: 1,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.dangerColor,
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.primary,
        width: 1,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 1,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.dangerColor,
        width: 1,
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
  ),
);
