import 'dart:ui';
import 'package:flutter/material.dart';
class AppColors
{
     static final backgroundColor = Color(0xff00263d);
     static final darkBackgroundColor = Color(0xff080c13);
     static final headingColor = Color(0xffdfaf37);
     static final descriptionColor = Colors.white;
     static final backGroundGradientColor = LinearGradient(
         colors: [backgroundColor, darkBackgroundColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
     );
}