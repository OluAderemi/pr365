import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/AccountScreens/login_account.dart';
import 'package:pr365/Screens/AccountScreens/verify_account.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';
import 'package:http/http.dart' as http;

class SignUpAccountScreen extends StatefulWidget {
  const SignUpAccountScreen({Key? key}) : super(key: key);

  @override
  State<SignUpAccountScreen> createState() => _SignUpAccountScreenState();
}

class _SignUpAccountScreenState extends State<SignUpAccountScreen> {
  bool obscure = true;

  final String apiUrl = "http://10.0.2.2:5000/signup";


  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            Row(
              children: [
                Container(
                    width: size.width,
                    height: size.height * 0.3,
                    color: Colors.grey.shade100,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-0.9, -0.5),
                          child: Container(
                            width: 64,
                            height: 46,
                            child: Image(
                              image: AssetImage(logo),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.5, 0.2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: "Sign up to find a place",
                                color: pr365TextBlackColor,
                                size: 24,
                                weight: FontWeight.w800,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text:
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                                color: pr365GreyTitleColor,
                                size: 14,
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
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
                    controller: fullNameController,
                    decoration: InputDecoration(
                        labelText: "Full Name*",
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
                    controller: emailAddressController,
                    decoration: InputDecoration(
                        labelText: "Email Address*",
                        hintText: "Saffino@gmail.com",
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
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                        labelText: "Phone Number",
                        hintText: "09089383892",
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
                        controller: passwordController,
                        decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "••••••••",
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
                    width: 60,
                    press: () {
                      setState(() {
                        obscure = !obscure;
                        if (obscure == false) {
                          obscure == true;
                        } else {
                          obscure == false;
                        }
                      });
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
                text: "Submit",
                textColor: Colors.white,
                buttonColor: pr365PrimaryColor,
                borderColor: pr365PrimaryColor,
                height: 50,
                width: 350,
                weight: FontWeight.w600,
                size: 16,
                press: () {
                  //signUp();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerifyAccountScreen()));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Center(
            //   child:
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginAccountScreen()));
                    },
                    child: CustomText(
                      text: "Have an account? Login",
                      color: pr365PrimaryColor,
                      size: 12,
                    ),
                  )
                ],
              ),
            ),
            //),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  // Future RegistrerNewUser() async {
  //   var response = await http.post(
  //       Uri.parse("https://bbt.a.babbelonia.com/flapi/v1/auth/sign_in"),
  //       body: {
  //         'email': emailController.text,
  //         'password': passwordController.text,
  //       },
  //       headers: {
  //         'access-token': 'access-token',
  //         'uid': 'uid',
  //         "client": 'client'
  //       });
  //
  //   print(response.headers["uid"]);
  //   uid = response.headers["uid"];
  //   access_token = response.headers["access-token"];
  //   client = response.headers["client"];
  //   response1 = response.statusCode;
  //   print(response1);
  //
  // }


  Future<void> signUp() async {
    var user = {
      'full_name': fullNameController.text,
      'email': emailAddressController.text,
      'phone_number': phoneNumberController.text,
      'password': passwordController.text,
    };

    var response = await http.post(
      Uri.parse(apiUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user), // Convert the Map to a JSON string
    );

    if (response.statusCode == 200) {
      // Signup successful
      print('Signup successful!');
    } else {
      // Handle signup failure
      print('Signup failed. Error: ${response.statusCode}');
    }
  }



  // Future signUp() async {
  //   var response = await http.post(
  //     Uri.parse(apiUrl),
  //     //headers: {'Content-Type': 'application/json'},
  //     body: {
  //       'full_name': fullNameController.text,
  //       'email': emailAddressController.text,
  //       'phone_number': phoneNumberController.text,
  //       'password': passwordController.text,
  //     },
  //   );
  //
  //   if (response.statusCode == 200) {
  //     // Signup successful
  //     print('Signup successful!');
  //   } else {
  //     // Handle signup failure
  //     print('Signup failed. Error: ${response.statusCode}');
  //   }
  //}
}
