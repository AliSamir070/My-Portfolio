import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/utils/color_manager.dart';

class AppTheme{
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: ColorManager.primaryColor,
        primary: ColorManager.primaryColor,
        secondary: ColorManager.secondaryColor,

    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle:SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent
      )
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 20.spMin,
        fontWeight: FontWeight.w600,
        color: Colors.black
      ),
      headlineMedium: TextStyle(
          fontSize: 24.spMin,
          fontWeight: FontWeight.w600,
          color: Colors.black
      )
    )

  );
}