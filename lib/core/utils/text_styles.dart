
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles{

  static TextStyle getTextStyle(){
    return GoogleFonts.montserrat(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }



  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,

  );

  static const textStyle20= TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white

  );

  static const textStyle26= TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.normal,
      color: Colors.white

  );

  static const textStyle30= TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white

  );


  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white
  );

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white

  );

}