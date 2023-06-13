import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/AccountScreens/login_account.dart';
import 'package:pr365/Screens/PropertyScreens/property_details.dart';
import 'package:pr365/Screens/PropertyScreens/property_list.dart';
import 'package:pr365/Screens/PropertyScreens/saved_homes.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/other_text.dart';
import 'package:pr365/StandardElements/constants.dart';

class PropertySearchScreen extends StatefulWidget {
  const PropertySearchScreen({Key? key}) : super(key: key);

  @override
  State<PropertySearchScreen> createState() => _PropertySearchScreenState();
}
class PropertyList {
  String imageUrl;
  String lister;
  String price;
  String title;
  String address;
  String bedrooms;
  String bathrooms;
  String parking;
  String status;
  String duration;

  PropertyList(this.imageUrl, this.lister, this.price, this.title, this.address,
      this.bedrooms, this.bathrooms, this.parking, this.status, this.duration);
}

List<PropertyList> items = [
  PropertyList(
      "assets/property_images/property_image1.png",
      "Tope Aroun",
      "1000",
      "Well Furnished Apartment",
      "221, Lekki, Lagos",
      "3",
      "1",
      "2",
      "Apartment on Rent",
      "For Long Period: 1 - 2 Years"),
  PropertyList(
      "assets/property_images/property_image1.png",
      "Tope Aroun",
      "1000",
      "Well Furnished Apartment",
      "221, Lekki, Lagos",
      "3",
      "1",
      "2",
      "Apartment on Rent",
      "For Long Period: 1 - 2 Years"),
  PropertyList(
      "assets/property_images/property_image1.png",
      "Tope Aroun",
      "1000",
      "Well Furnished Apartment",
      "221, Lekki, Lagos",
      "3",
      "1",
      "2",
      "Apartment on Rent",
      "For Long Period: 1 - 2 Years"),
  PropertyList(
      "assets/property_images/property_image1.png",
      "Tope Aroun",
      "1000",
      "Well Furnished Apartment",
      "221, Lekki, Lagos",
      "3",
      "1",
      "2",
      "Apartment on Rent",
      "For Long Period: 1 - 2 Years"),
  PropertyList(
      "assets/property_images/property_image1.png",
      "Tope Aroun",
      "1000",
      "Well Furnished Apartment",
      "221, Lekki, Lagos",
      "3",
      "1",
      "2",
      "Apartment on Rent",
      "For Long Period: 1 - 2 Years"),
];
class _PropertySearchScreenState extends State<PropertySearchScreen> {
  //int index = 0;
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
            MaterialPageRoute(builder: (context) => SavedHomesScreen()));
        break;
    }

    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            height: 35,
            width: size.width * 0.8,
            child:
                Center(
                  child: TextField(
                      cursorColor: Colors.black,
                      //controller: emailController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: pr365GreyTitleColor,
                          ),
                          //labelText: "Name",
                          hintText: "Lekki, Lagos",
                          hintStyle: GoogleFonts.montserrat(fontSize: 12),
                          labelStyle: GoogleFonts.roboto(),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: pr365GreyTitleColor),
                              borderRadius: BorderRadius.circular(5))),
                    ),
                ),
            ),
          centerTitle: true,
          leading: Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PropertyListScreen()));
              },
              child: CustomText(
                text: "List",
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
                  text: "Reset",
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
        body: ListView(
          children: [
            Container(
              height: 200,
              width: size.width,
            ),
            Container(
              height: 480,
              child: Stack(
                children: [
                  Container(
                    height: 480,
                    width: size.width,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //     border:
                    //     Border.all(color: Colors.white,),
                    //     borderRadius: BorderRadius.circular((5))),
                    //
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PropertyDetailsScreen()));
                        },
                        child: Container(
                          height: 320,
                          width: size.width,
                          child: Image(
                            image: AssetImage(items[0].imageUrl),
                            fit: BoxFit.cover,
                            width: size.width,
                            height: size.height * 0.4,
                          ),
                          //
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: items[0].title,
                              color: pr365TextBlackColor,
                              size: 18,
                              weight: FontWeight.bold,
                            ),
                            SizedBox(height: 5,),
                            CustomText(
                              text: items[0].address,
                              color: pr365GreyTitleColor,
                              size: 13,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(
                                  Icons.bed_outlined,
                                  color: pr365GreyTitleColor,
                                ),
                                SizedBox(width: 3,),
                                CustomText(
                                  text: items[0].bedrooms,
                                  color: pr365GreyTitleColor,
                                  size: 16,
                                  weight: FontWeight.w400,
                                ),
                                SizedBox(width: 8,),
                                Icon(
                                  Icons.bathtub_outlined,
                                  color: pr365GreyTitleColor,
                                ),
                                SizedBox(width: 3,),
                                CustomText(
                                  text: items[0].bathrooms,
                                  color: pr365GreyTitleColor,
                                  size: 16,
                                  weight: FontWeight.w400,
                                ),
                                SizedBox(width: 8,),
                                Icon(
                                  Icons.local_parking_outlined,
                                  color: pr365GreyTitleColor,
                                ),
                                SizedBox(width: 3,),
                                CustomText(
                                  text: items[0].parking,
                                  color: pr365GreyTitleColor,
                                  size: 16,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CustomText(
                                  text: items[0].status,
                                  color: pr365GreyTitleColor,
                                  size: 13,
                                ),
                                SizedBox(width: 50,),
                                CustomText(
                                  text: items[0].duration,
                                  color: pr365GreyTitleColor,
                                  size: 13,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment(0.9, -0.9),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginAccountScreen()));
                      },
                      child: Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.9, -0.1),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginAccountScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Container(
                          width: size.width,
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0XFFE0E2E6),
                                        borderRadius: BorderRadius.circular((50))),

                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: "Listed By:",
                                        color: Colors.white,
                                        size: 12,
                                        weight: FontWeight.w300,
                                      ),
                                      SizedBox(height: 5,),
                                      CustomText(
                                        text: items[0].lister,
                                        color: Colors.white,
                                        size: 16,
                                        weight: FontWeight.w500,
                                      ),
                                      SizedBox(height: 5,),
                                      OtherText(
                                        text: "\$${items[0].price}",
                                        color: Colors.white,
                                        size: 24,
                                        weight: FontWeight.w800,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
