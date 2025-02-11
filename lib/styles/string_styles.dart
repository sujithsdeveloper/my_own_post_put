import 'package:flutter/material.dart';
import 'package:my_own_post_put/utils/constants/color_constants.dart';

class StringStyle {
  static TextStyle appBarText() => TextStyle(
      color: ColorConstants.secondaryColor,
      fontSize: 18,
      // fontWeight: FontWeight.w700,
      fontFamily: 'lato');

  static TextStyle smallText({bool isBold = false}) => TextStyle(
      color: ColorConstants.secondaryColor,
      fontSize: 12,
      fontWeight: isBold ? FontWeight.w700 : null,
      fontFamily: 'latoRegular');

  static TextStyle normalText(
          {Color color = ColorConstants.secondaryColor,
          double? size = null,
          bool isBold = false}) =>
      TextStyle(
          fontFamily: 'latoRegular',
          color: color,
          fontSize: size == null ? null : size,
          fontWeight: isBold ? FontWeight.bold : null);
  static TextStyle normalTextBold() => TextStyle(
      color: ColorConstants.secondaryColor,
      fontFamily: 'latoRegular',
      fontWeight: FontWeight.bold);

  static TextStyle topHeading({double size = 45}) {
    return TextStyle(
        fontSize: size,
        fontFamily: 'lato',
        color: ColorConstants.secondaryColor,
        fontWeight: FontWeight.bold);
  }

  static TextStyle greyText({double size = 10, bool isBold = false}) {
    return TextStyle(
        fontWeight: isBold ? FontWeight.bold : null,
        color: Colors.grey,
        fontFamily: 'latoRegular',
        fontSize: size);
  }
}
