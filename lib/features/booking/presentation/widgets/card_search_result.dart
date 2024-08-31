import 'package:assessment/core/extensions/app_extensions.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/helper/date_formater.dart';
import '../../../../core/utils/styles/fonts/app_fonts.dart';
import '../../../../core/utils/widgets/dotted_border_line.dart';
import '../../data/models/result_travels.dart';
import 'centered_pill.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class CardSearchResult extends StatelessWidget {
  final BestFlights flightAvailable;

  const CardSearchResult({super.key, required this.flightAvailable});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CenteredPillClipper(),
      child: Card(
        elevation: 1,
        shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Container(
          height:180,
          padding:const EdgeInsets.symmetric(horizontal: 28).copyWith(top: 22),
          decoration: const BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    flightAvailable.flights!.first.airlineLogo ?? "",
                    width: 70,
                    height: 40,
                    fit: BoxFit.fitWidth,
                  ),
                   Image.network(
                    flightAvailable.flights!.last.airlineLogo ?? "",
                    width: 70,
                    height: 40,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "\$${flightAvailable.price!}",
                    style: context.textTheme.displayMedium!.copyWith(
                        color: AppColor.yellowColor1F,
                        fontFamily: AppFontHelper.fontMontserrat,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.depart,
                            style:const TextStyle(
                                color: AppColor.thirdColor,
                                fontSize: 14,
                                fontFamily: AppFontHelper.fontMontserrat,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            AppDateFormater.timeFormat(flightAvailable
                                    .flights!.first.departureAirport?.time ??
                                ""),
                            style:const TextStyle(
                                fontSize: 20,
                                color: AppColor.secondaryColor,
                                fontFamily: AppFontHelper.fontMontserrat,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       DottedBorderLine(),
                      DottedBorder(
                        color: AppColor.greyColorEC, // Border color
                        strokeWidth: 1, // Border width
                        dashPattern:const [3, 4], // Length of the dash and gap between dashes
                        borderType: BorderType.RRect, // Border type (Rounded Rectangle)
                        radius:const Radius.circular(20), // Radius for rounded corners
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "${convertTotalHour(flightAvailable.totalDuration!)}",
                            style:const TextStyle(
                                color: AppColor.greyColor,
                                fontFamily: AppFontHelper.fontMontserrat,
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                        ),
                      ),

                      DottedBorderLine()
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.arrive,
                        style:const TextStyle(
                            fontSize: 14,
                            color: AppColor.thirdColor,
                            fontFamily: AppFontHelper.fontMontserrat,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        AppDateFormater.timeFormat(flightAvailable
                                .flights!.last.arrivalAirport?.time ??
                            ""),
                        style:const TextStyle(
                            fontSize: 20,
                            color: AppColor.secondaryColor,
                            fontFamily: AppFontHelper.fontMontserrat,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              TextButton(
                  onPressed: () {},
                  child:  Text(
                    AppLocalizations.of(context)!.viewMore,
                    style:const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.secondaryColor),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

convertTotalHour(totalMinutes) {
  int hours = totalMinutes ~/ 60; // Integer division to get the total hours
  int minutes = totalMinutes % 60; // Remainder to get the remaining minutes
  return '${hours}H, ${minutes}M';
}
