import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/AccountScreens/sign_up_account.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';

import '../PropertyScreens/property_search.dart';

class LoginAccountScreen extends StatefulWidget {
  const LoginAccountScreen({Key? key}) : super(key: key);

  @override
  State<LoginAccountScreen> createState() => _LoginAccountScreenState();
}

class _LoginAccountScreenState extends State<LoginAccountScreen> {
  bool obscure = true;

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
          Stack(
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
                            Column(
                              children: [
                                Image(
                                  image: AssetImage(login),
                                  fit: BoxFit.cover,
                                  width: size.width,
                                  height: size.height * 0.4,
                                ),
                              ],
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
                            Align(
                              alignment: Alignment(-0.9, -0.4),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomText(
                                      text: "Welcome back!",
                                      color: Colors.white,
                                      size: 18,
                                      weight: FontWeight.w500,
                                    )
                                  ],
                                ),
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
                              text: "Login to continue",
                              color: pr365GreyTitleColor,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        height: 50,
                        width: size.width * 0.8,
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.black,
                            //controller: emailController,
                            decoration: InputDecoration(
                                labelText: "Email Address",
                                hintText: "Saffino@gmail.com",
                                hintStyle: GoogleFonts.montserrat(),
                                labelStyle: GoogleFonts.roboto(),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: pr365GreyTitleColor),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 50,
                            width: size.width * 0.8,
                            child: Center(
                              child: TextField(
                                cursorColor: Colors.black,
                                obscureText: obscure,
                                //controller: emailController,
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "*******",
                                    hintStyle: GoogleFonts.montserrat(),
                                    labelStyle: GoogleFonts.roboto(),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: pr365GreyTitleColor),
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 70,
                          child: RegularButton(
                            text: obscure ? "show" : "hide",
                            //buttonColor: Colors.grey.shade100,
                            buttonColor: Colors.white,
                            textColor: Color(0XFFAAAAAA),
                            borderColor: Colors.white,
                            size: 16,
                            weight: FontWeight.w600,
                            height: 30,
                            width: 100,
                            press: () {
                              setState(() {
                                obscure = !obscure;
                                if (obscure == false) {
                                  obscure == true;
                                } else {
                                  obscure == false;
                                }
                              });
                              // print("pressAttention1 is now $pressAttention1");
                              // print(pressAttention2);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => SelectAccountScreen()));
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Center(
                      child: RegularButton(
                        text: "Log In",
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
                                  builder: (context) => PropertySearchScreen()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SignUpAccountScreen()));
                            },
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => SignUpAccountScreen()));
                              },
                              child: CustomText(
                                text: "Create new account",
                                color: pr365PrimaryColor,
                                size: 12,
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: CustomText(
                              text: "Forgot your password?",
                              color: pr365PrimaryColor,
                              size: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
