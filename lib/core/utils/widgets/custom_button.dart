import 'package:assessment/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      this.onTap,
        this.padding,
        this.margin ,
      required this.title});
  final Color backGroundColor;
  final Function()? onTap;
  final String title;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 51,
          width: double.infinity,
          alignment: Alignment.center,
          margin: margin,
          decoration: BoxDecoration(
            color: backGroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: padding,
          child: Text(
            title,
            style: context.textTheme.headlineSmall,

          )),
    );
  }
}
