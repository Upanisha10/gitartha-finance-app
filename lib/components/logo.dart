import 'package:flutter/material.dart';
import 'package:gitartha/constants/colors.dart';

Widget buildLogoContainer(double dimensions) {
  return Container(
    height: dimensions,
    width: dimensions,
    child: Image.asset('lib/assets/images/final_logo.png')
  );
}
