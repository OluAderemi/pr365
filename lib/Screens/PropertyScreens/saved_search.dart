import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/AccountScreens/login_account.dart';
import 'package:pr365/Screens/PropertyScreens/property_details.dart';
import 'package:pr365/Screens/PropertyScreens/property_search.dart';
import 'package:pr365/Screens/PropertyScreens/saved_homes.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/constants.dart';

const List<String> sort = <String>['For Rent in Lagos', 'For Rent Outside Lagos'];

class SavedSearchScreen extends StatefulWidget {
  const SavedSearchScreen({Key? key}) : super(key: key);

  @override
  State<SavedSearchScreen> createState() => _SavedSearchScreenState();
}

class savedHomesList {
  String imageUrl;
  String title;
  String date;
  String price;

  savedHomesList(
      this.imageUrl,
      this.title,
      this.date,
      this.price,
      );
}

List<savedHomesList> savedHomes = [
  savedHomesList(
    "assets/property_images/property_image1.png",
    "Well Furnished Apartment",
    "2023-04-28",
    "1000",
  ),
  savedHomesList(
    "assets/property_images/property_image1.png",
    "Well Furnished Apartment",
    "2023-04-28",
    "1000",
  ),
];

class _SavedSearchScreenState extends State<SavedSearchScreen> {
  int _selectedIndex = 1;

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
            MaterialPageRoute(builder: (context) => SavedHomesScreen()));
        break;
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  String sortDropdownValue = sort.first;
  bool status1 = false;
  bool status2 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Saved Search",
          style: GoogleFonts.figtree(
              color: pr365GreyTitleColor,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PropertySearchScreen()));
            },
            child: CustomText(
              text: "Cancel",
              size: 14,
              weight: FontWeight.w700,
              color: pr365PrimaryColor,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: CustomText(
                text: "Save",
                size: 14,
                weight: FontWeight.w700,
                color: pr365PrimaryColor,
              ),
            ),
          )
        ],
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
          selectedItemColor: pr365PrimaryColor,
          unselectedItemColor: Color(0XFFAAAAAA),
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: 40,
            color: Color(0xFFD3D3D3),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Name",
                    color: pr365GreyTitleColor,
                    size: 14,
                    weight: FontWeight.bold,
                  ),
                  PopupMenuButton<String>(
                      itemBuilder: (context) {
                        return sort.map((str) {
                          return PopupMenuItem(
                              value: str,
                              child: CustomText(
                                text: str,
                                color: pr365GreyTitleColor,
                                size: 14,
                                weight: FontWeight.bold,
                              ));
                        }).toList();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          CustomText(
                            text: sortDropdownValue,
                            color: pr365GreyTitleColor,
                            size: 14,
                            weight: FontWeight.bold,
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      onSelected: (v) {
                        setState(() {
                          sortDropdownValue = v;
                        });
                      }),
                ],
              ),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            width: size.width,
            height: 40,
            color: Color(0xFFD3D3D3),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Email Notifications",
                    color: pr365GreyTitleColor,
                    size: 14,
                    weight: FontWeight.bold,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: FlutterSwitch(
                      activeColor: pr365PrimaryColor,
                      toggleColor: pr365PrimaryColor,
                      activeToggleColor: Color(0xFFDCE4EF),
                      inactiveColor: Color(0xFFDCE4EF),
                      width: 60.0,
                      height: 34.0,
                      valueFontSize: 25.0,
                      toggleSize: 25.0,
                      value: status1,
                      borderRadius: 30.0,
                      padding: 8.0,
                      onToggle: (val) {
                        setState(() {
                          status1 = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
