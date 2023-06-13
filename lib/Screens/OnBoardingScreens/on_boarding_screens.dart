import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pr365/Screens/MapScreens/map_search.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../StandardElements/constants.dart';

class MyList {
  String imageTitle;
  String imageDescription;
  String imageUrl;
  MyList(this.imageTitle, this.imageDescription, this.imageUrl);
}

int activeIndex = 0;

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // int activeIndex = 0;

  List<MyList> items = [
    MyList(
        "Welcome to PR365",
        "No more NEPA wahala, unreasonable bills and intrusion.",
        "assets/on_boarding_pictures/on_boarding_1.png"),
    MyList(
        "Welcome to PR365",
        "No more NEPA wahala, unreasonable bills and intrusion.",
        "assets/on_boarding_pictures/on_boarding_2.png"),
    MyList(
        "Secure Tenancy Deposit with Ease",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        "assets/on_boarding_pictures/on_boarding_3.png"),
    MyList(
        "Secure Tenancy Deposit with Ease",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        "assets/on_boarding_pictures/on_boarding_4.png"),
  ];
  final controller = LiquidController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        LiquidSwipe(
          enableLoop: false,
          liquidController: controller,
          pages: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: size.width,
                      height: size.height * 0.5,
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage(onBoardingImage1),
                            fit: BoxFit.cover,
                            width: size.width,
                            height: size.height * 0.5,
                          ),
                          new Align(
                            alignment: Alignment(0.9, -0.8),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MapSearchScreen()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white)),
                                width: 80,
                                height: 40,
                                //padding: EdgeInsets.symmetric(vertical: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Skip",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
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
                          Text(
                            onBoardingTitle1,
                            style: GoogleFonts.figtree(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            onBoardingDescription1,
                            style: GoogleFonts.figtree(fontSize: 14),
                          ),
                          // Center(
                          //   child: AnimatedSmoothIndicator(
                          //     activeIndex: 0,
                          //     count: 4,
                          //     effect: WormEffect(
                          //         dotColor: Colors.red,
                          //         activeDotColor: Colors.orange),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: size.width,
                      height: size.height * 0.5,
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage(onBoardingImage2),
                            fit: BoxFit.cover,
                            width: size.width,
                            height: size.height * 0.5,
                          ),
                          new Align(
                            alignment: Alignment(0.9, -0.8),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MapSearchScreen()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white)),
                                width: 80,
                                height: 40,
                                //padding: EdgeInsets.symmetric(vertical: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Skip",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
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
                          Text(
                            onBoardingTitle2,
                            style: GoogleFonts.figtree(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            onBoardingDescription2,
                            style: GoogleFonts.figtree(fontSize: 14),
                          ),
                          // Center(
                          //   child: AnimatedSmoothIndicator(
                          //     activeIndex: 1,
                          //     count: 4,
                          //     effect: WormEffect(
                          //         dotColor: Colors.red,
                          //         activeDotColor: Colors.orange),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: size.width,
                      height: size.height * 0.5,
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage(onBoardingImage3),
                            fit: BoxFit.cover,
                            width: size.width,
                            height: size.height * 0.5,
                          ),
                          new Align(
                            alignment: Alignment(0.9, -0.8),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MapSearchScreen()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white)),
                                width: 80,
                                height: 40,
                                //padding: EdgeInsets.symmetric(vertical: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Skip",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
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
                          Text(
                            onBoardingTitle3,
                            style: GoogleFonts.figtree(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            onBoardingDescription3,
                            style: GoogleFonts.figtree(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // Center(
                  //   child: AnimatedSmoothIndicator(
                  //     activeIndex: 2,
                  //     count: 4,
                  //     effect: WormEffect(
                  //         dotColor: Colors.red, activeDotColor: Colors.orange),
                  //   ),
                  // )
                ],
              ),
            ),
            ListView(
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment(0.9, -0.8),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MapSearchScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)),
                            width: 80,
                            height: 40,
                            //padding: EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Skip",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          width: size.width,
                          height: 400,
                          child: Stack(
                            children: [
                              Image(
                                image: AssetImage(onBoardingImage4),
                                fit: BoxFit.cover,
                                width: size.width,
                                height: 400,
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
                              Text(
                                onBoardingTitle4,
                                style: GoogleFonts.figtree(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                onBoardingDescription4,
                                style: GoogleFonts.figtree(fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      // Center(
                      //   child: AnimatedSmoothIndicator(
                      //     activeIndex: 3,
                      //     count: 4,
                      //     effect: WormEffect(
                      //         dotColor: Colors.red, activeDotColor: Colors.orange),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    )
        // Column(
        //   children: [
        //     Container(
        //       width: double.maxFinite,
        //       // onTap: () {
        //       //   // Navigator.push(
        //       //   //     context,
        //       //   //     MaterialPageRoute(
        //       //   //         builder: (context) => AuthenticationPage()));
        //       // },
        //       child: CarouselSlider.builder(
        //         itemCount: items.length,
        //         options: CarouselOptions(
        //           height: 500,
        //           viewportFraction: 1,
        //           enableInfiniteScroll: false,
        //           onPageChanged: (index, reason) {
        //             setState(() {
        //               activeIndex = index;
        //             });
        //           },
        //         ),
        //         itemBuilder: (context, index, realIndex) {
        //           final carouselList = items[index];
        //
        //           return Column(
        //             children: [
        //               Expanded(child: buildImage(carouselList.imageUrl, index)),
        //               SizedBox(height: 15),
        //               buildTitle(carouselList.imageTitle, index),
        //               SizedBox(height: 15),
        //             ],
        //           );
        //         },
        //       ),
        //     ),
        //     //buildDescription(carouselList.imageDescription, index),
        //     buildIndicator(),
        //     SizedBox(height: 15),
        //   ],
        // ),

        // RecommendedEventsHomeScreen(),
        // TopRatedHomeScreen(),
        // PopularEventsHomeScreen(),
        // LatestEventsHomeScreen(),

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Text("Organizers to follow",
        //       style: GoogleFonts.arsenal(
        //           //color: eventsPurpleColor,
        //           fontSize: 20),),
        //       SizedBox(width: 10,),
        //       Text("See more",
        //       style: GoogleFonts.arsenal(fontSize: 16, fontWeight: FontWeight.bold),)
        //     ],
        //   ),
        // ),
        //OrganizersToFollowHomeScreen(),

        // ListView.builder(
        //     itemCount: 4,
        //     itemBuilder: (BuildContext context, int index) {
        //       final cardList = items[index];
        //      //return TopRatedList();
        //     })
        );
  }

  buildImage(String imageUrl, int index) => Container(
        height: 400,
        child: Image.asset(
          imageUrl,
          //height: 100,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );

  buildTitle(String imageTitle, int index) => Align(
      alignment: FractionalOffset.bottomCenter,
      child: Text(
        imageTitle,
        style: GoogleFonts.figtree(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ));
  buildDescription(String imageDescription, int index) => Align(
      alignment: FractionalOffset.bottomCenter,
      child: Text(
        imageDescription,
        style: GoogleFonts.figtree(
          fontSize: 16,
        ),
      ));

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: items.length,
        effect: const JumpingDotEffect(
            dotColor: Color(0xFFAAAAAA),
            dotHeight: 15,
            dotWidth: 15,
            activeDotColor: Color(0xFF164993)),
      );
}
