import 'package:flutter/material.dart';

extension GetTheme on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  // AppLocalizations get appLocal => AppLocalizations.of(this)!;
}

extension GetScreenSize on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}

extension Localization on BuildContext {
  Locale get myLocale =>  Localizations.localeOf(this);
}


extension PaddingToWidget on Widget {
  Widget setPadding(
    BuildContext context, {
    double vertical = 0,
    double horizontal = 0,
  }) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  Widget setOnlyPadding(
    BuildContext context, {
    double bottom = 0,
    double left = 0,
    double right = 0,
    double top = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: bottom,
        left: left,
        right: right,
        top: top,
      ),
      child: this,
    );
  }

  Widget setAllPadding(double padding) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding),
      child: this,
    );
  }
}

extension ShowSnakbar on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
