import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pr365/Screens/AccountScreens/login_account.dart';
import 'package:pr365/Screens/AccountScreens/select_account.dart';
import 'package:pr365/Screens/MapScreens/map_search.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';

class WelcomeAccountScreen extends StatelessWidget {
   WelcomeAccountScreen({Key? key}) : super(key: key);

  final controller = LiquidController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          height: size.height * 0.4,
                          child: Stack(
                            children: [
                              Image(
                                image: AssetImage(rentAPlaceLarge),
                                fit: BoxFit.cover,
                                width: size.width,
                                height: size.height * 0.4,
                              ),
                              Align(
                                alignment: Alignment(-0.9, -0.8),
                                child: Container(
                                  width: 64,
                                  height: 46,
                                  child: Image(
                                    image: AssetImage(logoWhite),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                               Center(
                                //alignment: Alignment(0.9, -0.8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 80,
                                        height: 80,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image(
                                              image: AssetImage(rentAPlace),
                                              fit: BoxFit.cover,
                                              // width: size.width,
                                              // height: size.height * 0.4,
                                            ),
                                          ],
                                        ),
                                      ),
                                    CustomText(
                                      text: "Rent a place",
                                      color: Colors.white,
                                      size: 18,
                                      weight: FontWeight.w500,
                                    )
                                  ],
                                ),

                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: size.width * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              CustomText(
                                text: "Your living a new life companion",
                                color: pr365TextBlackColor,
                                size: 24,
                                weight: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomText(
                                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                                color: pr365GreyTitleColor,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Center(
                        child: RegularButton(
                          text: "Sign Up",
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
                                    builder: (context) => LoginAccountScreen()));
                          },

                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: RegularButton(
                          text: "Log In",
                          textColor: pr365GreyTitleColor,
                          buttonColor: Colors.white,
                          borderColor: pr365GreyTitleColor,
                          height: 50,
                          width: 350,
                          weight: FontWeight.w600,
                          size: 16,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginAccountScreen()));
                          },

                        ),
                      ),
                    ],
                  ),
                ),
          ],
        )
    );
  }
}
