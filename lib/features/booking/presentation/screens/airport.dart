import 'package:assessment/core/extensions/app_extensions.dart';
import 'package:assessment/core/utils/colors/app_color.dart';
import 'package:assessment/core/utils/styles/fonts/app_fonts.dart';
import 'package:assessment/features/booking/presentation/manager/airport/airport_cubit.dart';
import 'package:assessment/features/booking/presentation/manager/airport/airport_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/airport_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AirportScreen extends StatelessWidget {
  const AirportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.secondaryColor,
          iconTheme: const IconThemeData(color: AppColor.primaryColor),
          title:  Text(
            AppLocalizations.of(context)!.selectAirport,
            style:const TextStyle(
              color: AppColor.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: AppFontHelper.fontMontserrat,
            ),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<AirportCubit, AirportState>(
          builder: (context, state) {
            return SizedBox(
              width: context.screenWidth,
              height: context.screenHeight,
              child: state.whenOrNull(
                success: (dynamic _) => myBuilderFunction(context), // Corrected call to match function signature
                  failure:(d)=>error(context),
                  initial:()=>error(context)
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget myBuilderFunction(BuildContext context) { // Corrected function signature to accept BuildContext
  return ListView.separated(
    itemBuilder: (context, index) {
      AirportModel airportModel= context.read<AirportCubit>().airportsModel!.data![index];
      return GestureDetector(
        onTap: (){
          Navigator.pop(context,airportModel);
        },
        child: Container(
          width: context.screenWidth,
          color: AppColor.primaryColor,
          padding:const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${airportModel.airport_name}",style: TextStyle(
                      color: AppColor.blackColor.withOpacity(0.6),
                    fontFamily: AppFontHelper.fontMontserrat,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  Text(airportModel.country_name??"",style: TextStyle(
                      color: AppColor.blackColor.withOpacity(0.6),
                      fontFamily: AppFontHelper.fontMontserrat,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ],
              ),
              Text("(${airportModel.iata_code})",style: TextStyle(
              color: AppColor.blackColor.withOpacity(0.6),
                  fontFamily: AppFontHelper.fontMontserrat,
                  fontWeight: FontWeight.w500
              ),),

            ],
          ),
        ),
      );
    },
    separatorBuilder: (context, index) {
      return Container(
        height: 2,
      );
    },
    itemCount: context.read<AirportCubit>().airportsModel!.data!.length,
  );
}
Widget error(BuildContext context) { // Corrected function signature to accept BuildContext
  return const Center(child: Text("Error",style: TextStyle(color: AppColor.accentColor),));
}