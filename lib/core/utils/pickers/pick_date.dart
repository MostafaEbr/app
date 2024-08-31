import 'package:assessment/core/utils/colors/app_color.dart';
import 'package:flutter/material.dart';

import '../../../config/theme/light_theme.dart';

class AppPickedDate{
  static DateTime firstDate= DateTime(1950);
  static DateTime lastDate= DateTime(1950+150);

  static pickedDateRange(context)=>showDateRangePicker(context: context,
      firstDate:firstDate,
      lastDate: lastDate,
      initialEntryMode:DatePickerEntryMode.calendarOnly,
    builder: (context,child){
    return Theme(
      data: LightTheme.themeData.copyWith(
        primaryColor: AppColor.blackColor.withOpacity(0.5),
        // Header background color
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: AppColor.blackColor.withOpacity(0.6) ), // Day text color
        ),
        colorScheme:const ColorScheme.light(
          onPrimary:AppColor.primaryColor, // Header text color
          primary:  AppColor.secondaryColor,
          secondary:  AppColor.secondaryColor,
        ),
      ),
      child: child!,
    );
    }

  );
}