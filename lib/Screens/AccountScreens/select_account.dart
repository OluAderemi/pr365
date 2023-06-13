import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/AccountScreens/create_account.dart';
import 'package:pr365/Screens/AccountScreens/welcome_account.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button_with_image.dart';
import 'package:pr365/StandardElements/constants.dart';

class SelectAccountScreen extends StatefulWidget {
  const SelectAccountScreen({Key? key}) : super(key: key);

  @override
  State<SelectAccountScreen> createState() => _SelectAccountScreenState();
}

class _SelectAccountScreenState extends State<SelectAccountScreen> {
   bool pressAttention1 = false;
   bool pressAttention2 = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 50.0),
            child: Row(
              children: [
                Container(
                  height: 47,
                  width: 64,
                  child: Image(
                    image: AssetImage(logo),
                    fit: BoxFit.cover,
                    // width: 350,
                    // height: 350,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 50.0),
            child: Row(
              children: [
                Container(
                    width: size.width * 0.5,
                    child: Text(
                      "Your living a new life companion",
                      style: GoogleFonts.figtree(
                          color: pr365TextBlackColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RegularButtonWithImage(
                  text: "Rent a place",
                  //buttonColor: pr365PrimaryColor,
                  buttonColor: pressAttention1 ? pr365PrimaryColor : pr365GreyTitleColor,
                  borderColor: pr365PrimaryColor,
                  textColor: Colors.white,
                  size: 16,
                  weight: FontWeight.w600,
                  height: 240,
                  width: 165,
                  image: rentAPlace,
                  imageWidth: 50,
                  imageHeight: 50,
                  press: () {
                    setState(() => pressAttention1 = !pressAttention1);
                    pressAttention2 = false;
                    print("Presentation 2 is now $pressAttention2");
                    print(pressAttention1);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => SelectAccountScreen()));
                  },
                ),
                RegularButtonWithImage(
                  text: "List your place",
                  //buttonColor: Colors.grey.shade100,
                  buttonColor: pressAttention2 ? pr365PrimaryColor : Colors.grey.shade100,
                  textColor: Color(0XFFAAAAAA),
                  borderColor: Color(0XFFFAFAFA),
                  size: 16,
                  weight: FontWeight.w600,
                  height: 240,
                  width: 165,
                  image: listYourPlace,
                  imageWidth: 50,
                  imageHeight: 50,
                  press: () {
                    setState(() => pressAttention2 = !pressAttention2);
                    pressAttention1 = false;
                    print("pressAttention1 is now $pressAttention1");
                    print(pressAttention2);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => SelectAccountScreen()));
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Are you an artisan? ",
                style: GoogleFonts.figtree(
                    color: pr365TextBlackColor, fontSize: 16),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Register as an artisan",
                  style: GoogleFonts.figtree(
                      color: pr365PrimaryColor, fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: RegularButton(
              text: "Continue",
              textColor: Colors.white,
              buttonColor: pr365PrimaryColor,
              borderColor: pr365PrimaryColor,
              height: 50,
              width: 350,
              weight: FontWeight.w600,
              size: 16,
              press: () {
                print("presentation 1 = $pressAttention1 and presentation 2 = $pressAttention2");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WelcomeAccountScreen()));
              },

            ),
          )
        ],
      ),
    );
  }
}

