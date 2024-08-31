import 'package:assessment/config/router/app_routes.dart';
import 'package:assessment/core/extensions/app_extensions.dart';
import 'package:assessment/core/utils/dialogs/passengersDialogs.dart';
import 'package:assessment/core/utils/images/app_images.dart';
import 'package:assessment/features/booking/data/models/airport_model.dart';
import 'package:assessment/features/booking/domain/entities/select_passenger.dart';
import 'package:assessment/features/booking/presentation/manager/booking_cubit.dart';
import 'package:assessment/features/booking/presentation/manager/booking_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/helper/date_formater.dart';
import '../../../../core/utils/pickers/pick_date.dart';
import '../../../../core/utils/strings/app_strings.dart';
import '../../../../core/utils/widgets/custom_button.dart';
import '../../../../core/utils/widgets/dotted_vertical_line.dart';
import '../../../../core/utils/widgets/text_edit_custom.dart';
import '../../data/service/data_sources.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchFlightCard extends StatefulWidget {
  SearchFlightCard({super.key});

  @override
  State<SearchFlightCard> createState() => _SearchFlightCardState();
}

class _SearchFlightCardState extends State<SearchFlightCard> {
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController travellerController = TextEditingController();
  TextEditingController classController = TextEditingController();
  String? selectedClass;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      right: 16,
      bottom: context.screenHeight * 0.15,
      child: BlocBuilder<BookingCubit, BookingState>(builder: (context, state) {
        return Container(
          width: context.screenWidth,
          alignment: Alignment.center,
          height: context.screenHeight * 0.55,
          decoration: const BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(16).copyWith(top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 130,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 4, // Align the 'From' field at the top
                            left: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: () async {
                                final data =
                                    await context.pushNamed(AppRoutes.airports);
                                if (data != null) {
                                  fromController.text =
                                      (data as AirportModel).airport_name!;
                                  context.read<BookingCubit>().updateFrom(data);
                                }
                              },

                              child: EditTextCustom(
                                header:AppLocalizations.of(context)!.from,
                                prefixWidget:const Padding(
                                  padding:  EdgeInsets.all(12.0),
                                  child: Icon(Icons.circle,size: 8,color: AppColor.secondaryColor,),
                                ),
                                textEditingController: fromController,
                              ),
                            ),
                          ),
                          context.myLocale.languageCode==AppStrings.arabic?  Positioned(
                              top: 34,
                              right: 13,
                              child: DottedVerticalLine(color:  AppColor.orangeColor00.withOpacity(0.70), height: 65,)): Positioned(
                              top: 34,
                              left: 16,
                              child: DottedVerticalLine(color:  AppColor.orangeColor00.withOpacity(0.70), height: 65,)),
                          Positioned(
                              top: 45,
                              left: 0,
                              right: 0,
                              child: GestureDetector(
                                  onTap: () {
                                    fromController.text = context.read<BookingCubit>().bookingRequestBody.to?.airport_name ?? "";
                                    toController.text = context.read<BookingCubit>().bookingRequestBody.from?.airport_name ?? "";
                                    context.read<BookingCubit>().changeFromTo();
                                  },
                                  child: SvgPicture.asset(AppAssets.change))),
                          Positioned(
                            top: 80,
                            left: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: () async {
                                final data =
                                    await context.pushNamed(AppRoutes.airports);
                                if (data != null) {
                                  toController.text =
                                      (data as AirportModel).airport_name!;
                                  context.read<BookingCubit>().updateTo(data);
                                }
                              },
                              child: EditTextCustom(
                                header:AppLocalizations.of(context)!.to,
                                prefixWidget:const Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 10.0),
                                 child: Icon(Icons.airplanemode_active_outlined,size: 14,color: AppColor.secondaryColor,),
                                ),
                                textEditingController: toController,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Flexible(
                      child: GestureDetector(
                        onTap: () async {
                          DateTimeRange? daysSelect =
                              await AppPickedDate.pickedDateRange(context);
                          if (daysSelect != null) {
                            dateController.text =
                                "${AppDateFormater.dayMonthYearFormated(daysSelect.start)} - ${AppDateFormater.dayMonthYearFormated(daysSelect.end)}";
                            context
                                .read<BookingCubit>()
                                .updatePeriod(daysSelect);
                          }
                        },
                        child: EditTextCustom(
                          header:AppLocalizations.of(context)!.date,
                          textEditingController: dateController,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              SelectPassenger? selectedPassenger =
                                  await showPassengersDialog(context);

                              if (selectedPassenger != null) {
                                // Handle the selected passengers
                                travellerController.text =
                                    "${selectedPassenger.adultsPassengers}Adults , ${selectedPassenger.childrenPassengers} Children";
                                context
                                    .read<BookingCubit>()
                                    .updatePassengers(selectedPassenger);
                              }
                            },
                            child: EditTextCustom(
                              header:AppLocalizations.of(context)!.travellers,
                              textEditingController: travellerController,
                              suffixWidget: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColor.secondaryColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 48,
                            child: DropdownButtonFormField<String>(
                              dropdownColor: AppColor.primaryColor,
                              style: Theme.of(context).textTheme.titleMedium!.
                              copyWith(fontSize: 16,color: AppColor.secondaryColor,fontWeight: FontWeight.w600),
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColor.secondaryColor,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                    top: 8, bottom: 4, left: 16, right: 16),
                                label: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Text(
                                    AppLocalizations.of(context)!.classTravel,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                                enabled: false,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Adjust border radius if needed
                                ),
                              ),
                              value: selectedClass,
                              // This should be your current selection
                              onChanged: (String? newValue) {
                                selectedClass = newValue!;
                                classController.text =
                                    selectedClass!; // Update the text controller if needed
                                context
                                    .read<BookingCubit>()
                                    .updateClass(selectedClass);
                              },
                              items: ticketClassList(
                                      context) // Example dropdown items
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              CustomButton(
                backGroundColor: AppColor.yellowColor,
                title: AppLocalizations.of(context)!.searchFlight,
                onTap: () {

                  context.read<BookingCubit>().getBookingFlight();
                  context.pushNamed(AppRoutes.searchResult);
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}
