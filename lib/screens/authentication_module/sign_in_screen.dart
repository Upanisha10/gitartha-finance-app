import 'package:flutter/material.dart';

import '../../components/logo.dart';
import '../../components/text_form_field.dart';
import '../../constants/colors.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailCtrl = new TextEditingController();
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: buildLogoContainer(
                      constraints.maxHeight * 0.3)),
                  SizedBox(height: 10,),
                  Text('LOGIN', style: TextStyle(
                      fontSize: 45,
                      fontFamily: "Boowie",
                      color: AppColors.headingColor
                  ),),
                  Text('Already have an Account?', style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Futura",
                      color: AppColors.descriptionColor,
                      fontWeight: FontWeight.bold
                  ),),

                  SizedBox(height: constraints.maxHeight * 0.03,),

                  createTextFormFeild('EMAIL ADDRESS', emailCtrl),
                  SizedBox(height: constraints.maxHeight * 0.025,),
                  createTextFormFeild('PASSWORD', passCtrl),
                  SizedBox(height: constraints.maxHeight * 0.025,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('First time here?', style: TextStyle(
                          color: AppColors.descriptionColor,
                          fontFamily: "Boowie"),),
                      TextButton(onPressed: () {}, child: Text('Sign Up',
                        style: TextStyle(color: AppColors.headingColor,
                            fontFamily: "Boowie",
                            fontWeight: FontWeight.bold),))
                    ],
                  ),
                  SizedBox(height: constraints.maxHeight * 0.04,),
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
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Form is valid!')),
                            );
                          }
                        },
                        child: Text('Login', style: TextStyle(
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
        },
      ),
    );
  }
}
