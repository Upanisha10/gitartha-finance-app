import 'package:flutter/material.dart';
import 'package:gitartha/components/logo.dart';
import 'package:gitartha/components/text_form_field.dart';
import 'package:gitartha/constants/colors.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final phoneCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints){
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              gradient: AppColors.backGroundGradientColor
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildLogoContainer(constraints.maxHeight * 0.3),
                  SizedBox(height: constraints.maxHeight * 0.02,),

                  Text('Forgot Password?', style: TextStyle(fontSize: 32, fontFamily: "Boowie", color: AppColors.headingColor),),
                  SizedBox(height: constraints.maxHeight * 0.03,),
                  createTextFormFeild('PHONE NUMBER', phoneCtrl),
                  SizedBox(height: constraints.maxHeight * 0.035,),

                  Center(
                    child: SizedBox(
                      height: constraints.maxHeight * 0.06,
                      width: constraints.maxWidth * 0.5,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.backgroundColor,
                            foregroundColor: AppColors.headingColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            side: BorderSide(
                                color: AppColors.headingColor,
                                width: 2
                            )
                        ),
                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Mobile Number is valid')));
                          }
                        },
                        child: Text('SEND OTP', style: TextStyle(
                            color: AppColors.headingColor,
                            fontFamily: "Boowie",
                            fontWeight: FontWeight.bold),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
