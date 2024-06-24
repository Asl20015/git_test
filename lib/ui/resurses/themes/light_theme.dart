import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_test/ui/resurses/colors.dart';
import 'package:git_test/ui/resurses/text.dart';

final lightThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.light(
    primary: AppColors.primary,
  ),
  dividerColor: AppColors.greyColorLight,
  cardColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    titleTextStyle: AppText.h3.copyWith(color: Colors.black),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
  ),
  primaryColor: AppColors.primary,
  useMaterial3: true,
  textTheme: TextTheme(
    bodyMedium: AppText.body.copyWith(color: Colors.black),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    labelStyle: AppText.body,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.greyColorLight,
        width: 1,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.greyColorLight,
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
