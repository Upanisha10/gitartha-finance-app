import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:gitartha/screens/authentication_module/sign_in_screen.dart';
import 'package:gitartha/screens/authentication_module/sign_up_screen.dart';

void main(){
  runApp(DevicePreview(builder: (context) => MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
