import 'package:flutter/material.dart';

class CustomThemeData {
  ///colors
  static const primaryColor = Color(0xFF2D665F);
  static const colorWhite = Colors.white;
  static const colorGrey = Colors.grey;
  static const colorBlack = Colors.black;

  ///colors_end
  ///-------------------------------------------------

  ///font_sizes
  static const double loginHeadingFontSize = 25;

  ///font_sizes_end
  ///-------------------------------------------------

  ///media_query
   static double mediaQueryWidth({required BuildContext context, required double widthDouble}) {
     return MediaQuery.sizeOf(context).width*widthDouble;
   }

  static double mediaQueryHeight({required BuildContext context, required double heightDouble}) {
    return MediaQuery.sizeOf(context).width*heightDouble;
  }

///font_sizes_end
///-------------------------------------------------
}
