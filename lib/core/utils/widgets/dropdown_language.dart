import 'package:assessment/config/manager/app_manager_cubit.dart';
import 'package:assessment/core/utils/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../strings/app_strings.dart';

class LanguageDropdown extends StatefulWidget {
  @override
  _LanguageDropdownState createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {

  final List<Map<String, String>> _languages = [
    {'code': AppStrings.arabic, 'name': 'Arabic', 'flag': 'assets/flags/ar.png'},
    {'code':  AppStrings.english, 'name': 'English', 'flag': 'assets/flags/en.png'},
  ];

  @override
  Widget build(BuildContext context) {
    String _selectedLanguage = context.read<AppMangerCubit>().languageCode; // Default language

    return DropdownButton<String>(
      value: _selectedLanguage,
      icon:const Icon(Icons.language, color: AppColor.primaryColor), // Icon to show drop-down
      onChanged: (String? newValue) {
        setState(() {
          _selectedLanguage = newValue!;
        });
        context.read<AppMangerCubit>().changeLanguage(_selectedLanguage);
      },
      items: _languages.map<DropdownMenuItem<String>>((Map<String, String> language) {
        return DropdownMenuItem<String>(
          value: language['code'],
          child: Row(
            children: [
              Image.asset(
                language['flag']!,
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              Text(language['name']!),
            ],
          ),
        );
      }).toList(),
      underline:const SizedBox(), // Remove the underline
      dropdownColor: Colors.white, // Set dropdown background color
    );
  }
}
