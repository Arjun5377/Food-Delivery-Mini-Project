import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textWidget(String text,value,colorVar,width) {
  return Text(text,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: width*value,
        fontWeight: FontWeight.w700,
        color: colorVar,),
    ),
  );
}
Widget Button(String text,double height,double width, Color color){
  return Center(
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(2),
      ),
      child: Container(

        height: height * 0.1,
        width: width * 0.9,
        color: color,
        child: Center(
          child: textWidget(text,
              0.05, Colors.black, width),
        ),
      ),
    ),
  );
}

Widget Button1(String text,double height,double width, Color color){
  return Center(
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(2),
      ),
      child: Container(

        height: height * 0.1,
        width: width * 0.9,
        color: color,
        child: Center(
          child: textWidget(text,
              0.08,Colors.white, width),
        ),
      ),
    ),
  );
}