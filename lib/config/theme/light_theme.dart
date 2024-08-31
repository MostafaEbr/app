import 'package:assessment/core/utils/styles/fonts/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../core/utils/colors/app_color.dart';

class LightTheme {

  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    useMaterial3: true,
    splashColor: AppColor.thirdColor.withOpacity(0.1),
    fontFamily: AppFontHelper.fontMontserrat,

    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.secondaryColor,
    ),

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColor.thirdColor.withOpacity(0.35),
              width: (1.8)
          ),
        borderRadius:const BorderRadius.all(Radius.circular(12))
      ),
      enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(
              color: AppColor.thirdColor.withOpacity(0.35),
              width: (1.8)
          ),
          borderRadius:const BorderRadius.all(Radius.circular(12))

      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColor.thirdColor.withOpacity(0.35),
              width: (1.8)
          ),
          borderRadius:const BorderRadius.all(Radius.circular(12))

      ),
      disabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColor.thirdColor.withOpacity(0.35),
              width: (1.8)
          ),
          borderRadius:const BorderRadius.all(Radius.circular(12))
      ),
      //bottom: 2,top: 2
      // contentPadding: EdgeInsets.all(0.0).copyWith(left: 8,right: 8,), // Padding for text fields
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.primaryColor,
      onPrimary: AppColor.secondaryColor,
      secondary: AppColor.secondaryColor,
      onSecondary: AppColor.backgroundColor,
      error: AppColor.accentColor,
      onError: AppColor.accentColor,
      inversePrimary: AppColor.primaryColor,
      surface: Colors.transparent,
      onSurface: AppColor.thirdColor.withOpacity(0.8),
    ),
    textTheme:const TextTheme(


      displayLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        height: 1,
        fontFamily: AppFontHelper.fontMontserrat,
        color: AppColor.primaryColor,
      ),
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1,
        fontFamily: AppFontHelper.fontMontserrat,
        color: AppColor.secondaryColor,

      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        height: 1,
        fontFamily: AppFontHelper.fontMontserrat,
        fontWeight: FontWeight.w700,
        color: AppColor.primaryColor,

      ),
      displayMedium: TextStyle(
          fontSize: 14,
          fontFamily: AppFontHelper.fontMontserratSemiBold,
        color: AppColor.secondaryColor
      ),
      displaySmall: TextStyle(
        fontSize: 16,
        fontFamily: AppFontHelper.fontMontserrat,
        fontWeight: FontWeight.w500,
        color: AppColor.thirdColor,
      ),
    ),
  );

}
