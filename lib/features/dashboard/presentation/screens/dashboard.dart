import 'package:assessment/core/utils/colors/app_color.dart';
import 'package:assessment/features/dashboard/presentation/widgets/bottom_app_bar.dart';
import 'package:assessment/features/search/presentation/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/images/app_images.dart';
import '../../../booking/presentation/screens/booking_screen.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Widget> dashboardScreens = [
    const BookingScreen(),
    const SearchScreen()
  ];
  int _currentIndex = 0; // Track the selected index

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: Container(
        width: 65,
        // Adjust the width of the FAB
        height: 65,
        // Adjust the height of the FAB
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
        ),
        child: FloatingActionButton(
          backgroundColor: AppColor.secondaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
          onPressed: () {},
          child: SvgPicture.asset(AppAssets.flight),
        ),
      ),
      bottomNavigationBar: BottomBar(
        onPressed: (int value) {
          _currentIndex = value;
          setState(() {});
        },
      ),
      body: dashboardScreens[_currentIndex],
    );
  }
}
