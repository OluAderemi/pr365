import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/ProfileScreens/verification_screen.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';

class ShowProfileScreen extends StatefulWidget {
  const ShowProfileScreen({Key? key}) : super(key: key);

  @override
  State<ShowProfileScreen> createState() => _ShowProfileScreenState();
}

class _ShowProfileScreenState extends State<ShowProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: pr365GreyTitleColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: CustomText(
                    text: "Edit",
                    color: pr365PrimaryColor,
                    size: 16,
                    weight: FontWeight.w700)),
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Hi, I’m John",
                    color: pr365GreyTitleColor,
                    size: 20,
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: "Joined in 2022",
                    color: pr365GreyLineColor,
                    size: 14,
                    weight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: pr365GreyLineColor,
                    thickness: 0.2,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Icon(
                    Icons.verified_user_outlined,
                    color: pr365PrimaryColor,
                    size: 35,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomText(
                    text: "Identity Verification",
                    color: pr365GreyTitleColor,
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: "Show others you’re really you with the identity verification badge.",
                    color: pr365GreyLineColor,
                    size: 14,
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RegularButton(
                    text: "Get the badge",
                    buttonColor: Colors.white,
                    textColor: Color(0xFF7392BE),
                    borderColor: pr365PrimaryColor,
                    size: 16,
                    height: 50,
                    width: 145,
                    weight: FontWeight.w400,
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StartVerificationScreen()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
