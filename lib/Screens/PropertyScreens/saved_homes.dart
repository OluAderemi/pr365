import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/AccountScreens/login_account.dart';
import 'package:pr365/Screens/ProfileScreens/show_profile.dart';
import 'package:pr365/Screens/PropertyScreens/property_details.dart';
import 'package:pr365/Screens/PropertyScreens/property_search.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/constants.dart';

const List<String> sort = <String>['Saved Date', 'Price', 'Location'];

class SavedHomesScreen extends StatefulWidget {
  const SavedHomesScreen({Key? key}) : super(key: key);

  @override
  State<SavedHomesScreen> createState() => _SavedHomesScreenState();
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

class _SavedHomesScreenState extends State<SavedHomesScreen> {
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
            MaterialPageRoute(builder: (context) => ShowProfileScreen()));
        break;
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  String sortDropdownValue = sort.first;
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
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PropertySearchScreen()));
            },
            child: CustomText(
              text: "Map",
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
                text: "Share",
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
                    text: "Sort by:",
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
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PropertyDetailsScreen()));
              },
              child: ListView.builder(
                itemCount: savedHomes.length,
                itemBuilder: (context, index) {
                  final item = savedHomes[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Container(
                                //   height: 100,
                                //   width: 100,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(15)
                                //   ),
                                //   child: (
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    item.imageUrl,
                                    height: 76,
                                    width: 82,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                //   ),
                                //),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: item.title,
                                      size: 14,
                                      weight: FontWeight.bold,
                                      color: pr365TextBlackColor,
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        CustomText(
                                          text: "Check In: ",
                                          size: 13,
                                          weight: FontWeight.w500,
                                          color: pr365TextBlackColor,
                                        ),
                                        CustomText(
                                          text: item.date,
                                          size: 13,
                                          weight: FontWeight.w500,
                                          color: Color(0xFF9A9A9A),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    CustomText(
                                      text: "\$${item.price.toString()}",
                                      size: 14,
                                      weight: FontWeight.w600,
                                      color: pr365TextBlackColor,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(height: 15,),
                        Divider(
                          color: pr365GreyLineColor,
                          thickness: 0.3,
                          indent: size.width * 0.1,
                          endIndent: size.width * 0.1,
                        ),
                      ],
                    ),
                  );
                  // return ListTile(
                  //   leading: Image.network(item.imageUrl),
                  //   title: Text(item.title),
                  //   subtitle: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text("Check in ${item.date}"),
                  //       Text('\$${item.price}')
                  //     ],
                  //   ),
                  //   trailing: Column(
                  //     // mainAxisAlignment: MainAxisAlignment.center,
                  //     // crossAxisAlignment: CrossAxisAlignment.end,
                  //     children: [
                  //       Icon(Icons.more_vert_outlined),
                  //       RegularButton(
                  //           press: (){},
                  //       borderColor: pr365PrimaryColor,
                  //         buttonColor: pr365PrimaryColor,
                  //         text: "Rent",
                  //         textColor: Colors.white,
                  //         height: 28,
                  //         width: 50,
                  //       ),
                  //     ],
                  //   ),
                  // );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
