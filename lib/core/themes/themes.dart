import 'package:blog_app/core/constants/my_colors.dart';
import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData(
    // This is the theme of your application.
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    useMaterial3: true,
  );

  final darkTheme = ThemeData(
    // This is the theme of your application.
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    useMaterial3: true,
  );
}
