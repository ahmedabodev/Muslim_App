import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text,required this.Align,required this.size,required this.weight}) : super(key: key);
  final String text;
final TextAlign  Align;
final double size;
final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Text(
        text,
        style:TextStyle(

          fontSize: size,
          fontFamily: 'Cairo',
            fontWeight: weight,
        ),
      textAlign:Align ,


      ),
    );
  }
}
