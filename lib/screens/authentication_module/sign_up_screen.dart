import 'package:flutter/material.dart';
import 'package:gitartha/components/text_form_field.dart';
import 'package:gitartha/constants/colors.dart';
import '../../components/logo.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameCtrl = new TextEditingController();
  final emailCtrl = new TextEditingController();
  final phoneCtrl = new TextEditingController();
  final passCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            padding: EdgeInsets.all(35),
            decoration: BoxDecoration(
              gradient: AppColors.backGroundGradientColor
            ),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: buildLogoContainer(constraints.maxHeight * 0.20)),
                    SizedBox(height: 10,),
                    Text('SIGN UP', style: TextStyle(
                      fontSize: 45, fontFamily: "Boowie", color: AppColors.headingColor
                    ),),
                
                    Text('Plan smarter, save better, and grow faster - ', style: TextStyle(
                        fontSize: 16, fontFamily: "Futura", color: AppColors.descriptionColor, fontWeight: FontWeight.bold
                    ),),
                
                    Text('All in one place...', style: TextStyle(
                        fontSize: 20, fontFamily: "Futura", color: AppColors.descriptionColor, fontWeight: FontWeight.bold
                    ),),
                
                    SizedBox(height: constraints.maxHeight * 0.03,),
                    
                    createTextFormFeild('NAME', nameCtrl),
                    SizedBox(height: constraints.maxHeight * 0.025,),
                    createTextFormFeild('EMAIL ADDRESS', emailCtrl),
                    SizedBox(height: constraints.maxHeight * 0.025,),
                    createTextFormFeild('PHONE NUMBER', phoneCtrl),
                    SizedBox(height: constraints.maxHeight * 0.025,),
                    createTextFormFeild('PASSWORD', passCtrl),
                    SizedBox(height: constraints.maxHeight * 0.025,),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?' , style: TextStyle(color: AppColors.descriptionColor, fontFamily: "Boowie"),),
                        TextButton(onPressed: (){}, child: Text('Login' , style: TextStyle(color: AppColors.headingColor, fontFamily: "Boowie", fontWeight: FontWeight.bold),))
                      ],
                    ),
                    SizedBox(height: constraints.maxHeight * 0.04,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: constraints.maxHeight * 0.06,
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
                              onPressed: (){
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Form is valid!')),
                                  );
                                }
                              },
                              child: Text('Sign Up', style: TextStyle(color: AppColors.headingColor, fontFamily: "Boowie", fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    )
                
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

