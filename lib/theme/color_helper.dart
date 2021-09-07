import 'dart:ui';

import 'package:flutter/material.dart';

enum ColorHelper { white, black, yellow, lightGray, gray, darkGray, paleWhite, red }

extension ColorExtension on ColorHelper {
  Color get color {
    switch (this) {
      case ColorHelper.white:
        return const Color.fromRGBO(255, 255, 255, 1);
      case ColorHelper.black:
        return const Color.fromRGBO(0, 0, 0, 1);
      case ColorHelper.yellow:
        return const Color.fromRGBO(255, 215, 0, 1);
      case ColorHelper.lightGray:
        return const Color.fromRGBO(167, 167, 167, 1);
      case ColorHelper.gray:
        return const Color.fromRGBO(135, 135, 135, 1);
      case ColorHelper.darkGray:
        return const Color.fromRGBO(112, 112, 112, 1);
      case ColorHelper.paleWhite:
        return const Color.fromRGBO(242, 244, 243, 1);
      case ColorHelper.red:
        return const Color.fromRGBO(229, 99, 83, 1);
      default:
        return Colors.white;
    }
  }
}
