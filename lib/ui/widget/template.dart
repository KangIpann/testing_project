import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
//color
final HexColor primaryColor = HexColor("013463");
final HexColor primaryColorBackground = HexColor("003566");
final HexColor incomeColor = HexColor("07A304");
final HexColor lossColor = HexColor("FF0000");
final HexColor scrollablePageColor = HexColor("E7ECF0");

class TextStyleTemplate {
  static const TextStyle HeadingBold = TextStyle(
      fontSize: 24,
      fontFamily: 'Raleway',
      fontWeight: FontWeight.bold
  );

  static const TextStyle LabelText = TextStyle(
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontSize: 16
  );
 static TextStyle TotalUang = TextStyle(
      fontFamily: 'Raleway',
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 20
  );
 static TextStyle Rupiah = TextStyle(
      fontFamily: 'Raleway',
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 32
  );
 static TextStyle ContentBold = TextStyle(
      fontFamily: 'Raleway',
      fontWeight: FontWeight.bold,
      color: primaryColor,
      fontSize: 16
  );
  static TextStyle ContentBase = TextStyle(
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w400,
      color: primaryColor,
      fontSize: 12
  );
  static TextStyle DayLoss = TextStyle(
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w500,
      color: lossColor,
      fontSize: 16
  );

  static TextStyle DayIncome = TextStyle(
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w500,
      color: lossColor,
      fontSize: 16
  );

  static TextStyle CategoryLoss = TextStyle(
      fontFamily: 'Raleway',
      fontWeight: FontWeight.bold,
      color: lossColor,
      fontSize: 16
  );
  static TextStyle CategoryIncome = TextStyle(
      fontFamily: 'Raleway',
      fontWeight: FontWeight.bold,
      color: incomeColor,
      fontSize: 16
  );
// Add more TextStyles as needed
}
//TextStyle

