import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/PropertyScreens/make_payments.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';

class InspectionsScreen extends StatefulWidget {
  @override
  _InspectionsScreenState createState() => _InspectionsScreenState();
}

// class UpcomingList {
//   String imageUrl;
//   String title;
//   String date;
//   String price;
//
//   UpcomingList(
//     this.imageUrl,
//     this.title,
//     this.date,
//     this.price,
//   );
// }
//
// List<UpcomingList> upcomingItems = [
//   UpcomingList(
//     "assets/property_images/property_image1.png",
//     "111Well Furnished Apartment",
//     "Check In: 12 Mar 2021",
//     "1000",
//   ),
//   UpcomingList(
//     "assets/property_images/property_image1.png",
//     "111Well Furnished Apartment",
//     "Check In: 12 Mar 2021",
//     "1000",
//   ),
//   UpcomingList(
//     "assets/property_images/property_image1.png",
//     "111Well Furnished Apartment",
//     "Check In: 12 Mar 2021",
//     "1000",
//   ),
// ];
//
// class PastList {
//   String imageUrl;
//   String title;
//   String date;
//   String price;
//
//   PastList(
//       this.imageUrl,
//       this.title,
//       this.date,
//       this.price,
//       );
// }
//
// List<PastList> pastItems = [
//   PastList(
//     "assets/property_images/property_image1.png",
//     "Well Furnished Apartment",
//     "Check In: 12 Mar 2021",
//     "1000",
//   ),
//   PastList(
//     "assets/property_images/property_image1.png",
//     "Well Furnished Apartment",
//     "Check In: 12 Mar 2021",
//     "1000",
//   ),
//   PastList(
//     "assets/property_images/property_image1.png",
//     "Well Furnished Apartment",
//     "Check In: 12 Mar 2021",
//     "1000",
//   ),
// ];
//
// class CompletedList {
//   String imageUrl;
//   String title;
//   String date;
//   String price;
//
//   CompletedList(
//       this.imageUrl,
//       this.title,
//       this.date,
//       this.price,
//       );
// }
//
// List<CompletedList> completedItems = [
//   CompletedList(
//     "assets/property_images/property_image1.png",
//     "Well Furnished Apartment",
//     "Check In: 12 Mar 2021",
//     "1000",
//   ),
//   CompletedList(
//     "assets/property_images/property_image1.png",
//     "Well Furnished Apartment",
//     "Check In: 12 Mar 2021",
//     "1000",
//   ),
//   CompletedList(
//     "assets/property_images/property_image1.png",
//     "Well Furnished Apartment",
//     "Check In: 12 Mar 2021",
//     "1000",
//   ),
// ];
class Listing {
  String imageUrl;
  String title;
  String date;
  String price;

  Listing(this.imageUrl, this.title, this.date, this.price);
}

List<Listing> allListings = [];

List<UpcomingList> upcomingItems = [
  UpcomingList(
    "assets/property_images/property_image1.png",
    "111Well Furnished Apartment",
    "Check In: 12 Mar 2021",
    "1000",
  ),
  UpcomingList(
    "assets/property_images/property_image1.png",
    "111Well Furnished Apartment",
    "Check In: 12 Mar 2021",
    "1000",
  ),
  UpcomingList(
    "assets/property_images/property_image1.png",
    "111Well Furnished Apartment",
    "Check In: 12 Mar 2021",
    "1000",
  ),
];

class UpcomingList {
  String imageUrl;
  String title;
  String date;
  String price;

  UpcomingList(this.imageUrl, this.title, this.date, this.price);
}

List<PastList> pastItems = [
  PastList(
    "assets/property_images/property_image1.png",
    "Well Furnished Apartment",
    "Check In: 12 Mar 2021",
    "1000",
  ),
  PastList(
    "assets/property_images/property_image1.png",
    "Well Furnished Apartment",
    "Check In: 12 Mar 2021",
    "1000",
  ),
  PastList(
    "assets/property_images/property_image1.png",
    "Well Furnished Apartment",
    "Check In: 12 Mar 2021",
    "1000",
  ),
];

class PastList {
  String imageUrl;
  String title;
  String date;
  String price;

  PastList(this.imageUrl, this.title, this.date, this.price);
}

List<CompletedList> completedItems = [
  CompletedList(
    "assets/property_images/property_image1.png",
    "Well Furnished Apartment",
    "Check In: 12 Mar 2021",
    "1000",
  ),
  CompletedList(
    "assets/property_images/property_image1.png",
    "Well Furnished Apartment",
    "Check In: 12 Mar 2021",
    "1000",
  ),
  CompletedList(
    "assets/property_images/property_image1.png",
    "Well Furnished Apartment",
    "Check In: 12 Mar 2021",
    "1000",
  ),
];

class CompletedList {
  String imageUrl;
  String title;
  String date;
  String price;

  CompletedList(this.imageUrl, this.title, this.date, this.price);
}

// Add upcomingItems

class _InspectionsScreenState extends State<InspectionsScreen> {
  String _selectedOption = 'Option 1';

  List<Item> _items = [
    Item(
        title: 'Upcoming Item 1',
        date: '2023-04-28',
        price: 20.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "upcoming"),
    Item(
        title: 'Upcoming Item 2',
        date: '2023-04-29',
        price: 30.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "upcoming"),
    Item(
        title: 'Upcoming Item 3',
        date: '2023-04-30',
        price: 40.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "upcoming"),
    Item(
        title: 'Upcoming Item 4',
        date: '2023-05-01',
        price: 50.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "upcoming"),
    Item(
        title: 'Past Item 1',
        date: '2023-04-28',
        price: 20.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "past"),
    Item(
        title: 'Past Item 2',
        date: '2023-04-29',
        price: 30.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "past"),
    Item(
        title: 'Past Item 3',
        date: '2023-04-30',
        price: 40.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "past"),
    Item(
        title: 'Past Item 4',
        date: '2023-05-01',
        price: 50.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "past"),
    Item(
        title: 'Completed Item 1',
        date: '2023-04-28',
        price: 20.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "completed"),
    Item(
        title: 'Completed Item 2',
        date: '2023-04-29',
        price: 30.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "completed"),
    Item(
        title: 'Completed Item 3',
        date: '2023-04-30',
        price: 40.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "completed"),
    Item(
        title: 'Completed Item 4',
        date: '2023-05-01',
        price: 50.0,
        imageUrl: 'https://via.placeholder.com/150',
        description: "completed"),
  ];

  List<Item> get _selectedItems {
    switch (_selectedOption) {
      case 'Option 1':
        return _items.where((item) => item.description == "upcoming").toList();
      case 'Option 2':
        return _items.where((item) => item.description == "past").toList();
      case 'Option 3':
        return _items.where((item) => item.description == "completed").toList();
      default:
        return _items;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Inspections",
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RegularButton(
                        press: () {
                          setState(() {
                            _selectedOption = 'Option 1';
                          });
                        },
                        buttonColor: _selectedOption == 'Option 1'
                            ? pr365PrimaryColor
                            : Color(0xFFD3D3D3),
                        borderColor: _selectedOption == 'Option 1'
                            ? pr365PrimaryColor
                            : Color(0xFFD3D3D3),
                        height: 37,
                        width: 88,
                        text: "Upcoming",
                        textColor: _selectedOption == 'Option 1'
                            ? Colors.white
                            : Colors.grey,
                        size: 12,
                        weight: FontWeight.w600,
                      ),
                      RegularButton(
                        press: () {
                          setState(() {
                            _selectedOption = 'Option 2';
                          });
                        },
                        buttonColor: _selectedOption == 'Option 2'
                            ? pr365PrimaryColor
                            : Color(0xFFD3D3D3),
                        borderColor: _selectedOption == 'Option 2'
                            ? pr365PrimaryColor
                            : Color(0xFFD3D3D3),
                        height: 37,
                        width: 88,
                        text: "Past",
                        textColor: _selectedOption == 'Option 2'
                            ? Colors.white
                            : Colors.grey,
                        size: 12,
                        weight: FontWeight.w600,
                      ),
                      RegularButton(
                        press: () {
                          setState(() {
                            _selectedOption = 'Option 3';
                          });
                        },
                        buttonColor: _selectedOption == 'Option 3'
                            ? pr365PrimaryColor
                            : Color(0xFFD3D3D3),
                        borderColor: _selectedOption == 'Option 3'
                            ? pr365PrimaryColor
                            : Color(0xFFD3D3D3),
                        height: 37,
                        width: 88,
                        text: "Completed",
                        textColor: _selectedOption == 'Option 3'
                            ? Colors.white
                            : Colors.grey,
                        size: 12,
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _selectedItems.length,
                itemBuilder: (context, index) {
                  final item = _selectedItems[index];
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
                                  child: Image.network(
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
                                SizedBox(
                                  width: 80,
                                ),
                                Icon(Icons.more_vert_outlined),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RegularButton(
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MakePaymentsScreen()));
                              },
                              borderColor: pr365PrimaryColor,
                              buttonColor: pr365PrimaryColor,
                              text: "Rent",
                              textColor: Colors.white,
                              size: 12,
                              weight: FontWeight.w600,
                              height: 30,
                              width: 250,
                            ),
                          ],
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
          ],
        ),
      ),
    );
  }
}

class Item {
  final String title;
  final String date;
  final double price;
  final String imageUrl;
  final String description;

  Item(
      {required this.title,
      required this.date,
      required this.price,
      required this.imageUrl,
      required this.description});
}
