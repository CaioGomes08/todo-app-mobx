import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xfffa4d73);
const accentColor = const Color(0xff000000);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      bodyText1: new TextStyle(fontFamily: "Poppins"),
      bodyText2: new TextStyle(fontFamily: "Poppins"),
      caption: new TextStyle(fontFamily: "Poppins"),
      button: new TextStyle(fontFamily: "Poppins"),
      headline1: new TextStyle(fontFamily: "Poppins"),
      headline2: new TextStyle(fontFamily: "Poppins"),
      headline3: new TextStyle(fontFamily: "Poppins"),
      headline4: new TextStyle(fontFamily: "Poppins"),
      headline5: new TextStyle(fontFamily: "Poppins"),
      headline6: new TextStyle(fontFamily: "Poppins"),
      subtitle1: new TextStyle(fontFamily: "Poppins"),
      subtitle2: new TextStyle(fontFamily: "Poppins"),
      overline: new TextStyle(fontFamily: "Poppins"),
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
    scaffoldBackgroundColor: Color(0xfffafafa),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}
