import 'package:assessment/core/utils/colors/app_color.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedBorderLine extends StatelessWidget {
  Color color;
   DottedBorderLine({super.key,this.color=AppColor.greyColorEC});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DottedBorder(
        color: color, // Color of the border
        strokeWidth: 2, // Thickness of the dotted line
        dashPattern:const [2, 4], // Length of dashes and gaps
        customPath: (size) {
          return Path()
            ..moveTo(0, 0) // Start at the top-left corner
            ..lineTo(size.width, 0); // Draw a horizontal line
        },
        child:const SizedBox(
          width: 35, // Width of the dotted line
          height: 1, // Height of the dotted line
        ),
      ),
    );
  }
}