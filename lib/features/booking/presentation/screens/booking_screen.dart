import 'package:assessment/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/search_flight_card.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenHeight,
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(0.9)), // Adjust scale factor as needed

          child: Stack(
            children: [
              const Positioned(top: 0, child:  HeaderPage()),
               SearchFlightCard()
            ],
          ),
        ),
      ),
    );
  }
}
