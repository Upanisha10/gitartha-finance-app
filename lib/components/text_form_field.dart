import 'package:flutter/material.dart';
import 'package:gitartha/constants/colors.dart';
import 'package:gitartha/validators/formValidators.dart';

Widget createTextFormFeild(String fieldName, TextEditingController controller){
  return TextFormField(
      controller: controller,
      style: TextStyle(fontFamily: "Futura", color: AppColors.descriptionColor),
      validator: (value){
        if(fieldName == 'EMAIL ADDRESS') return FormValidators.validateEmail(controller.text.trim());
        else if(fieldName == 'PASSWORD') return FormValidators.validatePassword(controller.text.trim());
        else if(fieldName == 'PHONE NUMBER') return FormValidators.validatePhoneNumber(controller.text.trim());
        else return FormValidators.validateUserName(controller.text.trim());
      },
      decoration: InputDecoration(
        labelText: fieldName,
        contentPadding: EdgeInsets.all(20),
        labelStyle: TextStyle(color: AppColors.headingColor, fontSize: 12, fontFamily: "Boowie"),
        errorStyle: TextStyle(color: AppColors.descriptionColor, fontFamily: "Boowie"),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.headingColor,
            width: 2
          ),
          borderRadius: BorderRadius.circular(25)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.headingColor,
            width: 2
          ),
            borderRadius: BorderRadius.circular(20)
        ),
        
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2
          ),
          borderRadius: BorderRadius.circular(20)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red,
                width: 2
            ),
            borderRadius: BorderRadius.circular(20)
        ),
      ),
  );
}