import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/AccountScreens/complete_account.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Verify Account",
          style: GoogleFonts.figtree(
              color: pr365GreyTitleColor,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: pr365GreyTitleColor,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: CustomText(
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                size: 14,
                color: pr365TextBlackColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: RegularButton(
                text: "Submit",
                textColor: Colors.white,
                buttonColor: pr365PrimaryColor,
                borderColor: pr365PrimaryColor,
                height: 50,
                width: 350,
                weight: FontWeight.w600,
                size: 16,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CompleteAccountScreen()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
