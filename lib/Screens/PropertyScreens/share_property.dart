//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Stack(
//           clipBehavior: Clip.none,
//           children: [
//           Container(
//           width: double.infinity,
//           height: MediaQuery.of(context).size.width,
//           color: Colors.blue,
//           ),
//             Positioned(
//               bottom: -MediaQuery.of(context).size.width * 0.5,
//               left: 0,
//               right: 0,
//               child: Container(
//                 height: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.red,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
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

class SharePropertyScreen extends StatefulWidget {
  const SharePropertyScreen({Key? key}) : super(key: key);

  @override
  State<SharePropertyScreen> createState() => _SharePropertyScreenState();
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
// class CircleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     final radius = size.width / 4;
//     final centerY = size.height;
//     path.moveTo(0, centerY);
//     path.lineTo(0, 0);
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, centerY);
//     path.arcToPoint(
//       Offset(0, centerY),
//       radius: Radius.circular(radius),
//       clockwise: false,
//     );
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
class _SharePropertyScreenState extends State<SharePropertyScreen> {
  //int index = 0;
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    switch (index) {
      case 0:
      // only scroll to top when current index is selected.

        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SharePropertyScreen()));

        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SavedHomesScreen()));


        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SharePropertyScreen()));
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
              height: 320,
              width: size.width,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Image(
                      image: AssetImage(items[0].imageUrl),
                      fit: BoxFit.cover,
                      width: size.width,
                      //height: size.height * 0.4,
                    ),

                  Positioned(
                    bottom: -25,
                    left: (size.width - 50) / 2, // Center horizontally
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: pr365PrimaryColor, // Replace with desired color or use an image
                      ),
                      child: Icon(
                        Icons.ios_share_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.9, 0.9),
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
                  Align(
                    alignment: Alignment(0.5, -0.9),
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
                    alignment: Alignment(0.7, -0.9),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginAccountScreen()));
                      },
                      child: Icon(
                        Icons.share_outlined,
                        color: Colors.white,
                      ),
                    ),
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
                        Icons.more_horiz_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
                  Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                          Stack(
                                            children: [
                                              Center(
                                                child: CustomText(
                                                  text: "Share this property",
                                                  color: pr365GreyTitleColor,
                                                  size: 18,
                                                  weight: FontWeight.bold,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment(0.9, 0.1),
                                                child: Icon(
                                                  Icons.close,
                                                  color: pr365GreyTitleColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                SizedBox(height: 25,),
                              ],
                            ),
                      ),
            Divider(
              color: pr365GreyLineColor,
              thickness: 0.3,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person_add_outlined,
                      color: pr365GreyTitleColor,
                      ),
                      SizedBox(width: 5,),
                      CustomText(
                        text: "Share with shopping partner",
                        color: pr365GreyTitleColor,
                        size: 14,
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomText(
                          text: "Shopping with someone? Make it easy to search together and share thoughts on the homes you love.",
                          color: pr365GreyLineColor,
                          size: 12,
                          weight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: pr365GreyTitleColor,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 0.5,
                    color: pr365GreyLineColor,
                    margin: EdgeInsets.only(right: 10),
                  ),
                ),
                CustomText(
                  text: "or",
                  color: pr365GreyLineColor,
                  size: 18,
                  weight: FontWeight.w600,
                ),
                Expanded(
                  child: Container(
                    height: 0.5,
                    color: pr365GreyLineColor,
                    margin: EdgeInsets.only(left: 10),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: pr365PrimaryColor,
                            ),
                            child: Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          CustomText(
                            text: "Messages",
                            color: pr365PrimaryColor,
                            size: 12,
                            weight: FontWeight.bold,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF7392BE),
                            ),
                            child: Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          CustomText(
                            text: "Email",
                            color: pr365PrimaryColor,
                            size: 12,
                            weight: FontWeight.bold,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE0E2E6),
                            ),
                            child: Icon(
                              Icons.copy_outlined,
                              color: Color(0xFF7392BE),
                            ),
                          ),
                          SizedBox(height: 8),
                          CustomText(
                            text: "Copy link",
                            color: pr365PrimaryColor,
                            size: 12,
                            weight: FontWeight.bold,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE0E5E6),
                            ),
                            child: Icon(
                              Icons.more_horiz_outlined,
                              color: Color(0xFFAAAAAA),
                            ),
                          ),
                          SizedBox(height: 8),
                          CustomText(
                            text: "More",
                            color: pr365PrimaryColor,
                            size: 12,
                            weight: FontWeight.bold,
                          )
                        ],
                      ),
                    ],
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
