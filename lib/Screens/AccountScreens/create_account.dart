import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/AccountScreens/login_account.dart';
import 'package:pr365/Screens/AccountScreens/select_account.dart';
import 'package:pr365/Screens/AccountScreens/sign_up_account.dart';
import 'package:pr365/Screens/MapScreens/map_filter.dart';
import 'package:pr365/Screens/ProfileScreens/show_profile.dart';
import 'package:pr365/Screens/PropertyScreens/property_search.dart';
import 'package:pr365/Screens/PropertyScreens/saved_homes.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    switch (index) {
      case 0:
      // only scroll to top when current index is selected.

        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PropertySearchScreen()));

        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SavedHomesScreen()));


        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PropertySearchScreen()));
        break;
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ShowProfileScreen()));
        break;
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Saved Homes",
          style: GoogleFonts.figtree(
              color: pr365GreyTitleColor,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Saved Homes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0XFFAAAAAA),
          unselectedItemColor: Color(0XFFAAAAAA),
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.4,
                  width: size.height * 0.4,
                  child: Image(
                    image: AssetImage(createAccount),
                    fit: BoxFit.cover,
                    // width: 350,
                    // height: 350,
                  ),
                ),
                Text(
                  "Save your favorite homes",
                  style: GoogleFonts.figtree(
                      color: pr365TextBlackColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child:
                    Text(
                      "Sign up to save your favorite homes and get instant alerts when they are updated.",
                      style: GoogleFonts.figtree(
                        color: pr365GreyTitleColor,
                        fontSize: 14,
                        // fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                //),
                RegularButton(
                  text: "Create an account",
                  buttonColor: pr365PrimaryColor,
                  textColor: Colors.white,
                  borderColor: pr365PrimaryColor,
                  size: 16,
                  height: 50,
                  width: 350,
                  weight: FontWeight.w400,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpAccountScreen()));
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already saved a home? ",
                      style: GoogleFonts.figtree(
                          color: pr365TextBlackColor, fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginAccountScreen()));
                      },
                      child: Text(
                        "Sign in now.",
                        style: GoogleFonts.figtree(
                            color: pr365PrimaryColor, fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
    );
  }
}
