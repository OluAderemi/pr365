import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/AccountScreens/create_account.dart';
import 'package:pr365/StandardElements/constants.dart';
import 'package:flutter_switch/flutter_switch.dart';

const List<String> rentList = <String>[
  'Any',
  'Studio',
  '1',
  '2',
  '3',
  '4',
  '+5'
];

const List<String> squareFeet = <String>[
  'Any',
  '1500 - 2000',
  '2001 - 2500',
  '2501 - 3000',
  '+3000',
];

const List<String> lotSize = <String>[
  'Any',
  '10,000 - 15,000',
  '15,001 - 20,000',
  '20,001 - 25,000',
  '25,001 - 30,000',
  '+30,000',
];

const List<String> yearBuilt = <String>[
  'Any',
  '2000',
  '2001',
  '2002',
  '2003',
  '2004',
  '2005',
  '2006',
  '2007',
];

const List<String> basement = <String>[
  'Any',
  'Yes',
  'No',
];

const List<String> otherAmenities = <String>[
  'Any',
  'Yes',
  'No',
];

const List<String> views = <String>[
  'Any',
  'less than 1000',
  'more than 1000',
];

const List<String> daysOnPr365 = <String>[
  'Any',
  'less than 50 days',
  '50 - 100 days',
  '+100 days',
];

const List<String> showSchools = <String>[
  'Show Schools on Map 1',
  'Show Schools on Map 2',
];

class MapFilterScreen extends StatefulWidget {
  const MapFilterScreen({Key? key}) : super(key: key);

  @override
  State<MapFilterScreen> createState() => _MapFilterScreenState();
}

class _MapFilterScreenState extends State<MapFilterScreen> {
  double _currentSliderValue = 20;
  int? selectedValue;
  String? dropdownValue = rentList.first;
  String? showSchoolsDropdownValue = showSchools.first;
  String squareFeetDropdownValue = squareFeet.first;
  String lotSizeDropdownValue = lotSize.first;
  String yearBuiltDropdownValue = yearBuilt.first;
  String basementDropdownValue = basement.first;
  String otherAmenitiesDropdownValue = otherAmenities.first;
  String viewsDropdownValue = views.first;
  String daysOnPr365DropdownValue = daysOnPr365.first;
  bool status1 = false;
  bool status2 = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Filters",
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                "Reset",
                style: GoogleFonts.figtree(
                    color: pr365PrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                //Rent DropDown

                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => MapFilterScreen()));
                  },
                  child: Container(
                    height: 37,
                    width: 140,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: pr365GreyLineColor, width: 0.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                            child: Row(
                          children: [
                            Text(
                              "Rent: ",
                              style: GoogleFonts.montserrat(
                                  color: pr365GreyLineColor, fontSize: 14),
                            ),
                            DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              elevation: 16,
                              style: GoogleFonts.montserrat(
                                  color: pr365GreyLineColor),
                              underline: Container(
                                height: 0,
                                color: Colors.deepPurpleAccent,
                              ),
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  dropdownValue = value;
                                });
                              },
                              items: rentList
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
                //Slider
                Slider(
                  activeColor: pr365PrimaryColor,
                  inactiveColor: Color(0xFFDCE4EF),
                  value: _currentSliderValue,
                  max: 100,
                  //divisions: 5,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),

                //Bedrooms and Bathrooms selector

                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "Bedrooms ",
                        style: GoogleFonts.figtree(
                            color: pr365GreyTitleColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "(tap 2 numbers to select a range)",
                        style: GoogleFonts.figtree(
                          color: pr365GreyTitleColor,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  width: 351,
                  decoration: BoxDecoration(
                      border: Border.all(color: pr365GreyTitleColor, width: 0.5),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 54,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: pr365GreyLineColor, width: 0.5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          color: pr365PrimaryColor,
                        ),
                        child: Center(
                            child: Text(
                          "Any",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 66,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "Studio",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 46,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "1",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 46,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "2",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 46,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "3",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 46,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "4",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 46,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "+5",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "Bathrooms ",
                        style: GoogleFonts.figtree(
                            color: pr365GreyTitleColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  width: 351,
                  decoration: BoxDecoration(
                      border: Border.all(color: pr365GreyTitleColor, width: 0.5),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 60,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: pr365GreyLineColor, width: 0.5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          color: pr365PrimaryColor,
                        ),
                        child: Center(
                            child: Text(
                          "Any",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 58,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "1",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 58,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "2",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 58,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "3",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 58,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "4",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 58,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: pr365GreyLineColor, width: 0.5),
                          ),
                          child: Center(
                              child: Text(
                            "+5",
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 14),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Home Type

                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Home Type",
                            style: GoogleFonts.figtree(
                                color: pr365GreyTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: pr365PrimaryColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Houses",
                                style: GoogleFonts.montserrat(
                                    color: pr365GreyLineColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.2,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: pr365PrimaryColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Town homes",
                                style: GoogleFonts.figtree(
                                    color: pr365GreyLineColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: pr365PrimaryColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Apartments/Condos/Co-ops",
                            style: GoogleFonts.figtree(
                                color: pr365GreyLineColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Rental Amenities

                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Rental Amenities",
                            style: GoogleFonts.figtree(
                                color: pr365GreyTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Allow large dogs",
                            style: GoogleFonts.montserrat(
                                color: pr365GreyLineColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Radio(
                                value: 0,
                                groupValue: selectedValue,
                                onChanged: (value) =>
                                    setState(() => {selectedValue = value as int})),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Allow small dogs",
                            style: GoogleFonts.montserrat(
                                color: pr365GreyLineColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Radio(
                                value: 1,
                                groupValue: selectedValue,
                                onChanged: (value) =>
                                    setState(() => {selectedValue = value as int})),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Allow cats",
                            style: GoogleFonts.montserrat(
                                color: pr365GreyLineColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Radio(
                                value: 2,
                                groupValue: selectedValue,
                                onChanged: (value) =>
                                    setState(() => {selectedValue = value as int})),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "On-site Parking",
                            style: GoogleFonts.montserrat(
                                color: pr365GreyLineColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Radio(
                                value: 3,
                                groupValue: selectedValue,
                                onChanged: (value) =>
                                    setState(() => {selectedValue = value as int})),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "In-unit Laundry",
                            style: GoogleFonts.montserrat(
                                color: pr365GreyLineColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Radio(
                                value: 4,
                                groupValue: selectedValue,
                                onChanged: (value) =>
                                    setState(() => {selectedValue = value as int})),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Income Restricted",
                            style: GoogleFonts.montserrat(
                                color: pr365GreyLineColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Radio(
                                value: 5,
                                groupValue: selectedValue,
                                onChanged: (value) =>
                                    setState(() => {selectedValue = value as int})),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Apartment Community",
                            style: GoogleFonts.montserrat(
                                color: pr365GreyLineColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Radio(
                                value: 6,
                                groupValue: selectedValue,
                                onChanged: (value) =>
                                    setState(() => {selectedValue = value as int})),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Switches

                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "3D Homes Only",
                            style: GoogleFonts.montserrat(
                                color: pr365GreyLineColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownButton<String>(
                            value: showSchoolsDropdownValue,
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 80.0),
                              child: const Icon(Icons.keyboard_arrow_down),
                            ),
                            elevation: 16,
                            style: GoogleFonts.montserrat(
                                color: pr365GreyLineColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                            underline: Container(),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                showSchoolsDropdownValue = value;
                              });
                            },
                            items: showSchools
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                // child:
                                //   Padding(
                                //   padding: const EdgeInsets.only(right: 80.0),
                                child: Text(value),
                                // ),
                              );
                            }).toList(),
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
                              value: status2,
                              borderRadius: 30.0,
                              padding: 8.0,
                              onToggle: (val) {
                                setState(() {
                                  status2 = val;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Square Feet - Days on PR 356

                //Square Feet
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Square Feet",
                            style: GoogleFonts.figtree(
                                color: pr365GreyTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: PopupMenuButton<String>(
                                itemBuilder: (context) {
                                  return squareFeet.map((str) {
                                    return PopupMenuItem(
                                      value: str,
                                      child: Text(str,
                                          style: GoogleFonts.montserrat(
                                              color: pr365GreyLineColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                    );
                                  }).toList();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      squareFeetDropdownValue,
                                      style: GoogleFonts.montserrat(
                                          color: pr365GreyLineColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                                onSelected: (v) {
                                  setState(() {
                                    squareFeetDropdownValue = v;
                                  });
                                }),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(right: 30.0),
                          //   child:
                          //   DropdownButton<String>(
                          //     value: squareFeetDropdownValue,
                          //     icon: const Icon(Icons.keyboard_arrow_down),
                          //     elevation: 16,
                          //     style: GoogleFonts.montserrat(
                          //         color: pr365GreyLineColor),
                          //     underline: Container(
                          //       height: 0,
                          //     ),
                          //     onChanged: (String value) {
                          //       // This is called when the user selects an item.
                          //       setState(() {
                          //         squareFeetDropdownValue = value;
                          //       });
                          //     },
                          //     items: squareFeet
                          //         .map<DropdownMenuItem<String>>((String value) {
                          //       return DropdownMenuItem<String>(
                          //         value: value,
                          //         child: Text(value),
                          //       );
                          //     }).toList(),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Lot Size
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lot Size",
                            style: GoogleFonts.figtree(
                                color: pr365GreyTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: PopupMenuButton<String>(
                                itemBuilder: (context) {
                                  return lotSize.map((str) {
                                    return PopupMenuItem(
                                      value: str,
                                      child: Text(str,
                                          style: GoogleFonts.montserrat(
                                              color: pr365GreyLineColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                    );
                                  }).toList();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      lotSizeDropdownValue,
                                      style: GoogleFonts.montserrat(
                                          color: pr365GreyLineColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                                onSelected: (v) {
                                  setState(() {
                                    lotSizeDropdownValue = v;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Year Built
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Year  Built",
                            style: GoogleFonts.figtree(
                                color: pr365GreyTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: PopupMenuButton<String>(
                                itemBuilder: (context) {
                                  return yearBuilt.map((str) {
                                    return PopupMenuItem(
                                      value: str,
                                      child: Text(str,
                                          style: GoogleFonts.montserrat(
                                              color: pr365GreyLineColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                    );
                                  }).toList();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      yearBuiltDropdownValue,
                                      style: GoogleFonts.montserrat(
                                          color: pr365GreyLineColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                                onSelected: (v) {
                                  setState(() {
                                    yearBuiltDropdownValue = v;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Basement
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Basement",
                            style: GoogleFonts.figtree(
                                color: pr365GreyTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: PopupMenuButton<String>(
                                itemBuilder: (context) {
                                  return basement.map((str) {
                                    return PopupMenuItem(
                                      value: str,
                                      child: Text(str,
                                          style: GoogleFonts.montserrat(
                                              color: pr365GreyLineColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                    );
                                  }).toList();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      basementDropdownValue,
                                      style: GoogleFonts.montserrat(
                                          color: pr365GreyLineColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                                onSelected: (v) {
                                  setState(() {
                                    basementDropdownValue = v;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Other Amenities
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Other Amenities",
                            style: GoogleFonts.figtree(
                                color: pr365GreyTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: PopupMenuButton<String>(
                                itemBuilder: (context) {
                                  return otherAmenities.map((str) {
                                    return PopupMenuItem(
                                      value: str,
                                      child: Text(str,
                                          style: GoogleFonts.montserrat(
                                              color: pr365GreyLineColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                    );
                                  }).toList();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      otherAmenitiesDropdownValue,
                                      style: GoogleFonts.montserrat(
                                          color: pr365GreyLineColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                                onSelected: (v) {
                                  setState(() {
                                    otherAmenitiesDropdownValue = v;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),


                //Views
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Views",
                            style: GoogleFonts.figtree(
                                color: pr365GreyTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: PopupMenuButton<String>(
                                itemBuilder: (context) {
                                  return views.map((str) {
                                    return PopupMenuItem(
                                      value: str,
                                      child: Text(str,
                                          style: GoogleFonts.montserrat(
                                              color: pr365GreyLineColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                    );
                                  }).toList();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      viewsDropdownValue,
                                      style: GoogleFonts.montserrat(
                                          color: pr365GreyLineColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                                onSelected: (v) {
                                  setState(() {
                                    viewsDropdownValue = v;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Days On 365
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Days on PR 365",
                            style: GoogleFonts.figtree(
                                color: pr365GreyTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: PopupMenuButton<String>(
                                itemBuilder: (context) {
                                  return daysOnPr365.map((str) {
                                    return PopupMenuItem(
                                      value: str,
                                      child: Text(str,
                                          style: GoogleFonts.montserrat(
                                              color: pr365GreyLineColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                    );
                                  }).toList();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      daysOnPr365DropdownValue,
                                      style: GoogleFonts.montserrat(
                                          color: pr365GreyLineColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                                onSelected: (v) {
                                  setState(() {
                                    daysOnPr365DropdownValue = v;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Keywords
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Keywords",
                            style: GoogleFonts.montserrat(
                                color: pr365GreyTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                            ),),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: size.width * 0.8,
                            child: Center(
                              child: TextField(
                                cursorColor: Colors.black,
                                //controller: emailController,
                                decoration: InputDecoration(
                                    labelText: "Short term, furnished, etc",
                                    hintStyle: GoogleFonts.montserrat(),
                                    labelStyle: GoogleFonts.roboto(),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: pr365GreyTitleColor),
                                        borderRadius: BorderRadius.circular(5))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                SizedBox(
                  height: 20,
                ),

                //Save and Apply

                Padding(padding: EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccountScreen()));
                      },
                      child: Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            border:
                            Border.all(color: pr365PrimaryColor, width: 0.5),
                        borderRadius: BorderRadius.circular((5))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Center(
                                child: Text(
                                      "Save Search",
                                      style: GoogleFonts.montserrat(
                                          color: pr365PrimaryColor, fontSize: 14),
                                    ),

                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => MapFilterScreen()));
                      },
                      child: Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            border:
                            Border.all(color: pr365PrimaryColor, width: 0.5),
                            color: pr365PrimaryColor,
                            borderRadius: BorderRadius.circular((5))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Center(
                              child: Text(
                                "Apply (No Results)",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
