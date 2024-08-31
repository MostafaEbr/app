import 'package:assessment/core/utils/images/app_images.dart';
import 'package:assessment/core/utils/styles/fonts/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/colors/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomBar extends StatelessWidget {
  final ValueChanged<int> onPressed;
  const BottomBar({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 14.0, // The margin around the notch
      padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(bottom: 0),
      height: 60,
      color: AppColor.secondaryColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppAssets.home),
                  Text(
                   AppLocalizations.of(context)!.home,
                   style:const TextStyle(
                     color: AppColor.primaryColor,
                     fontFamily: AppFontHelper.fontSFProDisplay,
                     fontSize: 12,
                     fontWeight: FontWeight.w500
                   ),
                ),
              ],
            ),
            onPressed: () {
              onPressed(0);
            },
          ),
          const SizedBox(),
          IconButton(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(AppAssets.search),
                 Text(
                  AppLocalizations.of(context)!.search,
                  style:const TextStyle(
                      color: AppColor.primaryColor,
                      fontFamily: AppFontHelper.fontSFProDisplay,
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
            onPressed: () {
              onPressed(1);
            },
          ),
        ],
      ),
    );
  }
}
