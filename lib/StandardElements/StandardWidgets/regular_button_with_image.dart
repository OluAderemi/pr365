import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/StandardElements/constants.dart';

class RegularButtonWithImage extends StatelessWidget {
  const RegularButtonWithImage({
    Key? key,
    this.text,
    required this.press,
    this.buttonColor,
    this.borderColor,
    this.textColor,
    this.weight,
    this.size,
    this.height,
    this.width,
    this.image,
    this.imageWidth,
    this.imageHeight,
  }) : super(key: key);

  final String? text;
  final VoidCallback press;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  final double? size;
  final FontWeight? weight;
  final double? height;
  final double? imageWidth;
  final double? imageHeight;
  final double? width;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // hoverColor: Colors.red,
      // highlightColor: Colors.yellow,
      // focusColor: Colors.green,
      // splashColor: Colors.orange,
      onTap: press,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor!, width: 0.5),
            color: buttonColor,
            borderRadius: BorderRadius.circular((5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image ?? "null"),
              width: imageWidth,
              height: imageHeight,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              text!,
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
