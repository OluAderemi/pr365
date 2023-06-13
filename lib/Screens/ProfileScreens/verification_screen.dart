import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';

class StartVerificationScreen extends StatefulWidget {
  const StartVerificationScreen({Key? key}) : super(key: key);

  @override
  State<StartVerificationScreen> createState() =>
      _StartVerificationScreenState();
}

class _StartVerificationScreenState extends State<StartVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: ListView(
          children: [
            Container(
              height: size.height,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(
                        Icons.info_rounded,
                        color: Color(0xFF7392BE),
                        size: 50,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomText(
                        text: "Start your verification for Residential",
                        color: pr365TextBlackColor,
                        size: 24,
                        weight: FontWeight.w600,
                      ),
                      SizedBox(height: 15,),
                      CustomText(
                        text: "You’re not verified yet, kindly try renting a property to start your verification process.",
                        color: pr365GreyTitleColor,
                        size: 14,
                        weight: FontWeight.w600,
                      ),
                      SizedBox(height: 240),
                      RegularButton(
                        text: "Continue",
                        buttonColor: pr365PrimaryColor,
                        textColor: Colors.white,
                        borderColor: pr365PrimaryColor,
                        size: 16,
                        height: 50,
                        width: 350,
                        weight: FontWeight.w400,
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => StartVerificationScreen()));
                        },
                      ),
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
