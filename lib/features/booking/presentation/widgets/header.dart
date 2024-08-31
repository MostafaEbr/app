import 'package:assessment/core/extensions/app_extensions.dart';
import 'package:assessment/core/utils/styles/fonts/app_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/images/app_images.dart';
import '../../../../core/utils/strings/app_strings.dart';
import '../../../../core/utils/widgets/dropdown_language.dart';
import '../../data/service/data_sources.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          height: 270,
          width: context.screenWidth,
          decoration:const BoxDecoration(
              color: AppColor.secondaryColor,
              borderRadius:BorderRadius.only(bottomRight:Radius.circular( 20),bottomLeft:Radius.circular( 20))
          ),
        ),
        context.myLocale.languageCode==AppStrings.arabic?
        Positioned(
          top: 40,
          left: 10,
          child: Container(
              width: context.screenWidth,
              child: Center(child: SvgPicture.asset(AppAssets.logo,))),
        ):
        Positioned(
          top: 40,
          right: 10,
          child: Container(
              width: context.screenWidth,
              child: Center(child: SvgPicture.asset(AppAssets.logo,))),
        ),
         Positioned(
            top: 100 ,
            left: 16,
            child:Text(AppLocalizations.of(context)!.bookingYourFlight,
              textAlign: TextAlign.start,
              style:const TextStyle(
                  fontSize:28,
                  fontFamily: AppFontHelper.fontMontserrat,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2 ,
                  color: AppColor.primaryColor,
                  height: 1.1
              ),
            )),
        Positioned(
          right: 235 ,
          top: 70 ,
          child:
          Image.asset(AppAssets.position,scale: 1.45,),
        ),

        Positioned(
            right: 90 ,
            top: 30 ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppAssets.flightWay),
              ],
            )),
        Positioned(
            right: 70 ,
            top: 105 ,
            child: Row(
              children: [
                Image.asset(AppAssets.position),
              ],
            )),

        Positioned(
            right: -8,
            child: SvgPicture.asset(AppAssets.map)),
        Positioned(
            bottom: 64,
            child: Container(
              width: context.screenWidth,
              padding:const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  ticketTypeList(context).expand((e)=>[ Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(e,style: const TextStyle(color: AppColor.primaryColor),),
                      ticketTypeList(context).first !=e ? const SizedBox(): Container(
                        height: 2,
                        width: 50,
                        padding:const EdgeInsets.symmetric(horizontal: 4),
                        color: AppColor.primaryColor,
                      )
                    ],
                  )]).toList()
              ),
            )),
        context.myLocale.languageCode==AppStrings.arabic?Positioned(
            top: 32,
            left: 16,
            child: LanguageDropdown()): Positioned(
            top: 32,
            right: 16,
            child: LanguageDropdown()),
      ],
    );
  }
}
