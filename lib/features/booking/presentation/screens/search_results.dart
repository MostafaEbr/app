import 'package:assessment/core/extensions/app_extensions.dart';
import 'package:assessment/features/booking/presentation/manager/booking_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/result_travels.dart';
import '../manager/booking_cubit.dart';
import '../widgets/card_search_result.dart';
import '../widgets/header_result.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Column(
          children: [
            const HeaderResultPage(),
            const SizedBox(height: 20,),

            BlocBuilder<BookingCubit,BookingState>(
              builder: (context,state) {
                List<BestFlights> flightAvailable =[] ;
                if(context.read<BookingCubit>().resultTravels?.bestFlights!=null){
                  flightAvailable.addAll(context.read<BookingCubit>().resultTravels!.bestFlights!);

                }
                if (context.read<BookingCubit>().resultTravels?.otherFlights!=null){
                  flightAvailable.addAll(context.read<BookingCubit>().resultTravels!.otherFlights!);
                }
                return  flightAvailable.isEmpty?const SizedBox(): Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                      padding:const EdgeInsets.symmetric(horizontal: 16),
                      itemBuilder: (context,index){
                        return  CardSearchResult(flightAvailable: flightAvailable[index]);
                      }, separatorBuilder: (context,index){
                    return Container(height: 4,);
                  }, itemCount: flightAvailable.length),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}




