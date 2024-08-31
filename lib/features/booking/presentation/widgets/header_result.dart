import 'package:assessment/core/extensions/app_extensions.dart';
import 'package:assessment/core/utils/styles/fonts/app_fonts.dart';
import 'package:assessment/features/booking/presentation/manager/booking_cubit.dart';
import 'package:assessment/features/booking/presentation/manager/booking_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/images/app_images.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HeaderResultPage extends StatelessWidget {
  const HeaderResultPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          height: 255,
          width: context.screenWidth,
          decoration:const BoxDecoration(
              color: AppColor.secondaryColor,
              borderRadius:BorderRadius.only(bottomRight:Radius.circular( 20),bottomLeft:Radius.circular( 20))
          ),
        ),

        Positioned(
          left: 80,
          top: 120,
          child:
          Column(
            children: [
              Image.asset(AppAssets.position),
              const SizedBox(height: 16,),
              Text("${context.read<BookingCubit>().bookingRequestBody.to?.iata_code}",
              style: context.textTheme.displayLarge,)

            ],
          ),
        ),
        Positioned(
            right: 90,
            top: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppAssets.flightDisplay,width: 170,),
              ],
            )),
        Positioned(
            right: 60,
            top: 125,
            child: Column(
              children: [
                Image.asset(AppAssets.position),
              const SizedBox(height: 16,),
                Text(
                    "${context.read<BookingCubit>().bookingRequestBody.from?.iata_code}",
                  style: context.textTheme.displayLarge,)
              ],
            )),
        Positioned(
            right: -8,
            child: SvgPicture.asset(AppAssets.map)),

        Positioned(
          bottom: 16,
          child:
          BlocBuilder<BookingCubit,BookingState>(
            builder: (context,state) {
              int bestFlight=0;
              int otherFlights=0;
              if(context.read<BookingCubit>().resultTravels?.bestFlights!=null){
                bestFlight= context.read<BookingCubit>().resultTravels!.bestFlights!.length;

              }
              if (context.read<BookingCubit>().resultTravels?.otherFlights!=null){
                otherFlights= context.read<BookingCubit>().resultTravels!.otherFlights!.length;
              }

              return SizedBox(
                width: context.screenWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${bestFlight+otherFlights} ${AppLocalizations.of(context)!.flightsAvailable}",
                        style: context.textTheme.displayMedium!.copyWith(
                            color: AppColor.primaryColor,fontSize: 14,
                            fontFamily: AppFontHelper.fontMontserrat,
                            fontWeight: FontWeight.w500
                        )
                    )

                  ],
                ),
              );
            }
          ),
        ),
        Positioned(
            top: 32,
            child:SizedBox(
              width: context.screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon:const Icon(Icons.arrow_back_outlined,color: AppColor.primaryColor,)),

                  Text(
                      AppLocalizations.of(context)!.searchResult,
                      style: context.textTheme.displayMedium!.copyWith(
                          color: AppColor.primaryColor,fontSize: 16,
                          fontFamily: AppFontHelper.fontMontserrat,
                          fontWeight: FontWeight.w500
                      )),
                  const SizedBox(width: 40,)
                ],
              ),
            )),

      ],
    );
  }
}
