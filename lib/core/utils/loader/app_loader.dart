import 'dart:io';
import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class AppLoader {
  static const double _strokeWidth = 2;
  static loadingAdaptive() {
    return Transform.scale(
      scale: Platform.isIOS ? 1.3 : 1.0,
      child: Center(
        child: CircularProgressIndicator.adaptive(
            strokeWidth: _strokeWidth,
            backgroundColor: Platform.isIOS
                ? AppColor.secondaryColor
                : AppColor.primaryColor,
            valueColor:
                const AlwaysStoppedAnimation<Color>(AppColor.secondaryColor)),
      ),
    );
  }

  static loadingPageAdaptive(context, {Color? background}) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      color: background ?? Colors.grey.withOpacity(0.1),
      child: Center(
        child: Container(
          width: 90,
          height: 90,
          decoration: const BoxDecoration(
              color: AppColor.secondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: AppLoader.loadingAdaptive(),
        ),
      ),
    );
  }
}
