import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/StandardElements/constants.dart';

class RegularButton extends StatelessWidget {
  const RegularButton({
    Key? key,
    this.text,
    required this.press,
    this.buttonColor,
    this.borderColor,
    this.textColor,
    this.size,
    this.weight,
    this.height,
    this.width,
  }) : super(key: key);

  final String? text;
  final VoidCallback press;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  final double? size ;
  final FontWeight? weight;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            border:
            Border.all(color: borderColor!, width: 0.5),
            color: buttonColor,
            borderRadius: BorderRadius.circular((5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            // Center(
            //   child:

           // ),
           //  Center(
           //    child:
              Text( text!,
                style: GoogleFonts.montserrat(
                  color: textColor,
                  fontSize: size,
                  fontWeight: weight,
                ),
              ),

            //),
          ],
        ),
      ),
    );
  }
}
