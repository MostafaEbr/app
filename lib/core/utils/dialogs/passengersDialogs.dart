import 'package:assessment/core/extensions/app_extensions.dart';
import 'package:assessment/core/utils/colors/app_color.dart';
import 'package:assessment/features/booking/domain/entities/select_passenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PassengerSelectorDialog extends StatelessWidget {
  const PassengerSelectorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width

    return Dialog(
      backgroundColor: AppColor.primaryColor,
        shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)

        ),
      insetPadding:const EdgeInsets.symmetric(horizontal: 16), // Reduce side padding
      child: Container(
        width: screenWidth, // Set to full screen width
        padding:const EdgeInsets.all(20),
        decoration: const BoxDecoration(
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              AppLocalizations.of(context)!.selectPassengers,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: AppColor.blackColor,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            const _PassengerSelectorContent(),
          ],
        ),
      ),
    );
  }
}

class _PassengerSelectorContent extends StatefulWidget {
  const _PassengerSelectorContent({super.key});

  @override
  _PassengerSelectorContentState createState() =>
      _PassengerSelectorContentState();
}

class _PassengerSelectorContentState extends State<_PassengerSelectorContent> {
  int adultsPassenger = 1;
  int childrenPassenger = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                AppLocalizations.of(context)!.adults,
                style: context.textTheme.displaySmall!.copyWith(
                    color: AppColor.secondaryColor, fontWeight: FontWeight.w500)),
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: AppColor.blackColor,
                  ),
                  onPressed: () {
                    setState(() {
                      if (adultsPassenger > 1) adultsPassenger--;
                    });
                  },
                ),
                Text(adultsPassenger.toString(),
                    style: context.textTheme.displaySmall!.copyWith(
                        color: AppColor.secondaryColor,
                        fontWeight: FontWeight.w500)),
                IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: AppColor.blackColor,
                  ),
                  onPressed: () {
                    setState(() {
                      adultsPassenger++;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                AppLocalizations.of(context)!.children,
                style: context.textTheme.displaySmall!.copyWith(
                    color: AppColor.secondaryColor, fontWeight: FontWeight.w500)),
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: AppColor.blackColor,
                  ),
                  onPressed: () {
                    setState(() {
                      if (childrenPassenger > 0) childrenPassenger--;
                    });
                  },
                ),
                Text(childrenPassenger.toString(),
                    style: context.textTheme.displaySmall!.copyWith(
                        color: AppColor.secondaryColor,
                        fontWeight: FontWeight.w500)),
                IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: AppColor.blackColor,
                  ),
                  onPressed: () {
                    setState(() {
                      childrenPassenger++;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(null); // Return null on Cancel
              },
              child: Text('Cancel', style: context.textTheme.displaySmall),
            ),
            const SizedBox(width: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.yellowColor,
              ),
              onPressed: () {
                SelectPassenger selectPassenger = SelectPassenger(
                  adultsPassengers: adultsPassenger,
                  childrenPassengers: childrenPassenger,
                );
                Navigator.of(context).pop(selectPassenger); // Return object on OK
              },
              child: const Text('OK'),
            ),
          ],
        ),
      ],
    );
  }
}

Future<SelectPassenger?> showPassengersDialog(BuildContext context) async {
  return await showDialog<SelectPassenger>(
    context: context,
    builder: (context) => const PassengerSelectorDialog(),
  );
}
