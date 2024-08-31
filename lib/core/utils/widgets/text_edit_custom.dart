import 'package:assessment/core/utils/styles/fonts/app_fonts.dart';
import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class EditTextCustom extends StatelessWidget {
  final String header ;
  final String? hint ;
  final TextInputAction? textInputAction;
  final TextEditingController textEditingController ;
  final bool isRequired;
  final AutovalidateMode? autoValidateMode;
  final TextInputType? keyboardType;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final String? Function(String?)? validator;
  const EditTextCustom({super.key, required this.header, this.suffixWidget , this.isRequired=false, required this.textEditingController,this.validator,this.hint, this.textInputAction, this.keyboardType, this.autoValidateMode, this.prefixWidget});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        controller: textEditingController,
        cursorHeight: 16,
        textInputAction:textInputAction,
        validator:validator,
        keyboardType:keyboardType,
        decoration: InputDecoration(
            contentPadding:const EdgeInsets.only(top: 8,bottom: 4,left: 28,right: 24),
            hintText: hint,
            floatingLabelBehavior:FloatingLabelBehavior.always,
            hintStyle:const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400
            ),
            enabled: false,
            label:  Container(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Text(
                header,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            prefixIcon:prefixWidget ,
          prefixIconConstraints:const BoxConstraints(
            maxWidth:30,
            minHeight: 30
          ),
            suffixIcon:suffixWidget ,
            errorStyle:const TextStyle(
                fontFamily: AppFontHelper.fontMontserrat,
                fontSize: 12,
                height: 1,
                fontWeight: FontWeight.w400
            ),
        ),
        style: Theme.of(context).textTheme.titleMedium!.
        copyWith(fontSize: 16,color: AppColor.secondaryColor,fontWeight: FontWeight.w600),

      ),
    );
  }
}
