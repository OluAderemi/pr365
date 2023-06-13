// import 'package:events_intelbox_project/Data/latest_events_home_screen.dart';
// import 'package:events_intelbox_project/Data/organizers_to_follow_home_screen.dart';
// import 'package:events_intelbox_project/Data/popular_events_home_screen.dart';
// import 'package:events_intelbox_project/Data/recommended_events_home_screen.dart';
// import 'package:events_intelbox_project/Screens/Authentication/authentication.dart';
// import 'package:events_intelbox_project/Data/top_rated_home_screen.dart';
// import 'package:events_intelbox_project/StandardElements/constants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/PropertyScreens/inspections.dart';
import 'package:pr365/Screens/PropertyScreens/property_list.dart';
import 'package:pr365/Screens/PropertyScreens/property_search.dart';
import 'package:pr365/Screens/PropertyScreens/schedule_inspection.dart';
import 'package:pr365/Screens/PropertyScreens/share_property.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PropertyList {
  String price;
  String title;
  String address;
  String bedrooms;
  String bathrooms;
  String parking;
  String status;
  String duration;

  PropertyList(this.price, this.title, this.address, this.bedrooms,
      this.bathrooms, this.parking, this.status, this.duration);
}

List<PropertyList> listItems = [
  PropertyList("1000", "Well Furnished Apartment", "221, Lekki, Lagos", "3",
      "1", "2", "Apartment on Rent", "For Long Period: 1 - 2 Years"),
];

class MyList {
  String imageUrl;
  MyList(this.imageUrl);
}

class PropertyDetailsScreen extends StatefulWidget {
  const PropertyDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PropertyDetailsScreen> createState() => _PropertyDetailsScreenState();
}

class _PropertyDetailsScreenState extends State<PropertyDetailsScreen> {
  int activeIndex = 0;
  List<MyList> items = [
    MyList("assets/property_images/property_image1.png"),
    MyList("assets/property_images/property_image1.png"),
    MyList("assets/property_images/property_image1.png")
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PropertyListScreen()));
              },
              child: CarouselSlider.builder(
                itemCount: items.length,
                options: CarouselOptions(
                  height: size.height * 0.5,
                  //enlargeCenterPage: true,
                  // enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: false,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  final carouselList = items[index];

                  return Stack(
                    children: [
                      buildImage(carouselList.imageUrl, index),
                      Align(
                        alignment: Alignment(-0.9, -0.8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PropertyListScreen()));
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.9, 0.8),
                        child: buildIndicator(),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: listItems[0].title,
                    color: pr365TextBlackColor,
                    size: 18,
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.favorite_outline,
                    color: pr365PrimaryColor,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  title: Center(
                                    child: CustomText(
                                      text: "Driving Directions",
                                      color: Colors.black,
                                      size: 16,
                                      weight: FontWeight.w600,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SharePropertyScreen()));
                                  },
                                ),
                                Divider(
                                  color: pr365GreyLineColor,
                                  thickness: 0.3,
                                ), // Add a divider
                                ListTile(
                                  title: Center(
                                    child: CustomText(
                                      text: "Share this Property",
                                      color: Colors.black,
                                      size: 16,
                                      weight: FontWeight.w600,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SharePropertyScreen()));
                                  },
                                ),
                                Divider(
                                  color: pr365GreyLineColor,
                                  thickness: 0.3,
                                ), // Add a divider
                                ListTile(
                                  title: Center(
                                    child: CustomText(
                                      text: "Report Listing",
                                      color: Colors.black,
                                      size: 16,
                                      weight: FontWeight.w600,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SharePropertyScreen()));
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.share_outlined,
                      color: pr365PrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              CustomText(
                text: listItems[0].address,
                color: pr365GreyTitleColor,
                size: 13,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.bed_outlined,
                    color: pr365GreyTitleColor,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CustomText(
                    text: listItems[0].bedrooms,
                    color: pr365GreyTitleColor,
                    size: 16,
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.bathtub_outlined,
                    color: pr365GreyTitleColor,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CustomText(
                    text: listItems[0].bathrooms,
                    color: pr365GreyTitleColor,
                    size: 16,
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.local_parking_outlined,
                    color: pr365GreyTitleColor,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CustomText(
                    text: listItems[0].parking,
                    color: pr365GreyTitleColor,
                    size: 16,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  CustomText(
                    text: listItems[0].status,
                    color: pr365GreyTitleColor,
                    size: 13,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  CustomText(
                    text: listItems[0].duration,
                    color: pr365GreyTitleColor,
                    size: 13,
                  ),
                ],
              )
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Apartment Description",
                color: pr365TextBlackColor,
                size: 18,
                weight: FontWeight.bold,
              ),
              SizedBox(
                height: 5,
              ),
              CustomText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                color: pr365GreyTitleColor,
                size: 12,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120,
                    width: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.kitchen_outlined,
                              color: pr365GreyTitleColor,
                            ),
                            SizedBox(
                              width: 27,
                            ),
                            CustomText(
                              text: "Kitchen",
                              color: pr365GreyTitleColor,
                              size: 16,
                              weight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.air_outlined,
                              color: pr365GreyTitleColor,
                            ),
                            SizedBox(
                              width: 27,
                            ),
                            CustomText(
                              text: "Air Conditioner",
                              color: pr365GreyTitleColor,
                              size: 16,
                              weight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.kitchen_outlined,
                              color: pr365GreyTitleColor,
                            ),
                            SizedBox(
                              width: 27,
                            ),
                            CustomText(
                              text: "Kitchen",
                              color: pr365GreyTitleColor,
                              size: 16,
                              weight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.air_outlined,
                              color: pr365GreyTitleColor,
                            ),
                            SizedBox(
                              width: 27,
                            ),
                            CustomText(
                              text: "Air Conditioner",
                              color: pr365GreyTitleColor,
                              size: 16,
                              weight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: RegularButton(
            text: "Inspect property",
            textColor: Colors.white,
            buttonColor: pr365PrimaryColor,
            borderColor: pr365PrimaryColor,
            height: 50,
            width: 350,
            weight: FontWeight.w600,
            size: 16,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InspectionsScreen()));
            },
          ),
        ),
      ],
    ));
  }

  buildImage(String imageUrl, int index) => Container(
        child: Image.asset(
          imageUrl,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: items.length,
        effect: const JumpingDotEffect(
            dotColor: Color(0xFFAAAAAA),
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: Color(0xFFFFFFFF)),
      );
}
