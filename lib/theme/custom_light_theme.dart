import 'package:flutter/material.dart';

import 'color_helper.dart';

class CustomTheme {
  ThemeMode get currentTheme => ThemeMode.light;

  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: ColorHelper.yellow.color,
        elevation: 0,
        centerTitle: true,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: ColorHelper.black.color,
          ),
        ),
      ),
      fontFamily: 'SourceSansPro',
      primaryColor: ColorHelper.black.color,
      accentColor: ColorHelper.black.color,
      backgroundColor: ColorHelper.paleWhite.color,
      errorColor: const Color.fromRGBO(232, 25, 68, 1.0),
      scaffoldBackgroundColor: ColorHelper.white.color,
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w500,
          color: ColorHelper.black.color,
        ),
        headline2: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: ColorHelper.black.color,
        ),
        headline3: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w500,
          color: ColorHelper.black.color,
        ),
        headline4: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: ColorHelper.black.color,
        ),
        headline5: TextStyle(
          color: ColorHelper.black.color,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        headline6: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: ColorHelper.black.color,
        ),
        subtitle1: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ColorHelper.black.color,
        ),
        subtitle2: TextStyle(
          color: ColorHelper.darkGray.color,
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        // bodyText1: TextStyle(
        //   fontSize: 13,
        //   fontWeight: FontWeight.w400,
        //   color: ColorHelper.monochromaticGray500.color,
        // ),
        // bodyText2: TextStyle(
        //   fontSize: 16,
        //   fontWeight: FontWeight.w400,
        //   color: ColorHelper.foyerBlack.color,
        // ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0),
            ),
          ),
          textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          backgroundColor: MaterialStateProperty.all(ColorHelper.yellow.color),
          minimumSize: MaterialStateProperty.all(const Size(304, 58)),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        color: ColorHelper.gray.color,
      ),
      cardTheme: CardTheme(
        elevation: 10,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        shadowColor: ColorHelper.lightGray.color,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: Color.fromRGBO(125, 143, 161, 1),
          fontSize: 16.0,
          height: 1.7,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        alignLabelWithHint: true,
        fillColor: const Color.fromRGBO(238, 238, 238, 1),
        hintStyle: const TextStyle(
          color: Color.fromRGBO(177, 177, 177, 1),
          fontSize: 15,
          fontWeight: FontWeight.w300,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorHelper.lightGray.color,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        isDense: true,
        contentPadding: const EdgeInsets.all(20),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorHelper.lightGray.color,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorHelper.red.color,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorHelper.red.color,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
