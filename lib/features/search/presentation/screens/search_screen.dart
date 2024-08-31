import 'package:assessment/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenHeight,
        child:const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Search Screen")
          ],
        ),
      ),
    );
  }
}
