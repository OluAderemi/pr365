import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/AccountScreens/login_account.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';

class CompleteAccountScreen extends StatefulWidget {
  const CompleteAccountScreen({Key? key}) : super(key: key);

  @override
  State<CompleteAccountScreen> createState() => _CompleteAccountScreenState();
}

class _CompleteAccountScreenState extends State<CompleteAccountScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Set up Profile",
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: CustomText(
                      text: "Use a unique artist name .  Your artist name is what will appear on all your music releases.",
                      size: 14,
                      color: pr365TextBlackColor,
                    ),
                  ),
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
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: pr365GreyTitleColor,
                            ),
                            labelText: "Name",
                            hintText: "Okonye Tochi",
                            hintStyle: GoogleFonts.montserrat(),
                            labelStyle: GoogleFonts.roboto(),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: pr365GreyTitleColor),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                            prefixIcon: Icon(
                              Icons.star_outline,
                              color: pr365GreyTitleColor,
                            ),
                            labelText: "Account Details",
                            hintText: "Account Details",
                            hintStyle: GoogleFonts.montserrat(),
                            labelStyle: GoogleFonts.roboto(),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: pr365GreyTitleColor),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                            prefixIcon: Icon(
                              Icons.star_outline,
                              color: pr365GreyTitleColor,
                            ),
                            labelText: "Account Details",
                            hintText: "Account Details",
                            hintStyle: GoogleFonts.montserrat(),
                            labelStyle: GoogleFonts.roboto(),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: pr365GreyTitleColor),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                            prefixIcon: Icon(
                              Icons.star_outline,
                              color: pr365GreyTitleColor,
                            ),
                            labelText: "Account Details",
                            hintText: "Account Details",
                            hintStyle: GoogleFonts.montserrat(),
                            labelStyle: GoogleFonts.roboto(),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: pr365GreyTitleColor),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                            prefixIcon: Icon(
                              Icons.star_outline,
                              color: pr365GreyTitleColor,
                            ),
                            labelText: "Account Details",
                            hintText: "Account Details",
                            hintStyle: GoogleFonts.montserrat(),
                            labelStyle: GoogleFonts.roboto(),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: pr365GreyTitleColor),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: RegularButton(
                      text: "Next",
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
