import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/PropertyScreens/saved_search.dart';
import 'package:pr365/Screens/PropertyScreens/share_property.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';
import 'package:intl/intl.dart';

const List<String> rentList = <String>[
  'Physical',
  'Virtual',
];

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String? dropdownValue = rentList.first;

  late DateTime _selectedDateTime;

  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _selectedDateTime = DateTime.now();
  }

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      final TimeOfDay? timePicked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(_selectedDateTime),
      );
      if (timePicked != null) {
        setState(() {
          _selectedDateTime = DateTime(
            picked.year,
            picked.month,
            picked.day,
            timePicked.hour,
            timePicked.minute,
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final DateFormat dateFormatter = DateFormat.yMd().add_jm();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Checkout",
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: CustomText(
                    text: "Choose Payment Method",
                    size: 14,
                    color: pr365GreyTitleColor,
                    weight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
                    size: 14,
                    color: pr365TextBlackColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CustomText(
                    text: "Funds to be posted to Escrow",
                    size: 14,
                    color: pr365GreyTitleColor,
                    weight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CustomText(
                    text: "\$3500",
                    size: 14,
                    color: pr365TextBlackColor,
                    weight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: pr365GreyLineColor,
                  thickness: 0.3,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        masterCard,
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(
                        visa,
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(
                        paypal,
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 20, bottom: 5.0),
                  child: CustomText(
                    text: "Credit Card",
                    size: 14,
                    color: pr365TextBlackColor,
                    weight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Container(
                    height: size.width * 0.12,
                    width: size.width * 0.9,
                    child: Center(
                      child: TextField(
                        cursorColor: Colors.black,
                        //controller: emailController,
                        decoration: InputDecoration(
                            labelText: "Credit Card",
                            hintText: "Credit Card",
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
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 20, bottom: 5.0),
                  child: CustomText(
                    text: "Name",
                    size: 14,
                    color: pr365TextBlackColor,
                    weight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Container(
                    height: size.width * 0.12,
                    width: size.width * 0.9,
                    child: Center(
                      child: TextField(
                        cursorColor: Colors.black,
                        //controller: emailController,
                        decoration: InputDecoration(
                            labelText: "Name",
                            hintText: "Sule Martins",
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
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 20, bottom: 5.0),
                  child: CustomText(
                    text: "Card",
                    size: 14,
                    color: pr365TextBlackColor,
                    weight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Container(
                    height: size.width * 0.12,
                    width: size.width * 0.9,
                    child: Center(
                      child: TextField(
                        cursorColor: Colors.black,
                        //controller: emailController,
                        decoration: InputDecoration(
                            labelText: "Card",
                            hintText: "4242 4242 4242 4242",
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

                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 20, bottom: 5.0),
                  child: CustomText(
                    text: "Phone",
                    size: 14,
                    color: pr365TextBlackColor,
                    weight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Container(
                    height: size.width * 0.12,
                    width: size.width * 0.9,
                    child: Center(
                      child: TextField(
                        cursorColor: Colors.black,
                        //controller: emailController,
                        decoration: InputDecoration(
                            labelText: "Phone Number",
                            hintText: "09089383892",
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 165,
                        height: 65,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Expiry Date",
                              size: 14,
                              color: pr365GreyTitleColor,
                              weight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 60,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    cursorColor: Colors.black,
                                    //controller: monthController,
                                    decoration: InputDecoration(
                                        label: Center(
                                            child: CustomText(
                                          text: "mm",
                                          size: 14,
                                          color: Color(0xFFAAAAAA),
                                          weight: FontWeight.w600,
                                        )),
                                        hintStyle: GoogleFonts.montserrat(),
                                        labelStyle: GoogleFonts.roboto(),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: pr365GreyTitleColor),
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                CustomText(
                                  text: "/",
                                  size: 14,
                                  color: pr365GreyLineColor,
                                  weight: FontWeight.w600,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 40,
                                  width: 60,
                                  child:
                                      // Center(
                                      //   child:
                                      TextField(
                                    cursorColor: Colors.black,
                                    textAlign: TextAlign.center,
                                    //controller: yearController,
                                    decoration: InputDecoration(
                                        label: Center(
                                            child: CustomText(
                                          text: "yy",
                                          size: 14,
                                          color: Color(0xFFAAAAAA),
                                          weight: FontWeight.w600,
                                        )),
                                        hintStyle: GoogleFonts.montserrat(),
                                        labelStyle: GoogleFonts.roboto(),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: pr365GreyTitleColor),
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                  ),
                                  //),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 165,
                        height: 65,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Security Number",
                              size: 14,
                              color: pr365GreyTitleColor,
                              weight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 80,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    cursorColor: Colors.black,
                                    //controller: monthController,
                                    decoration: InputDecoration(
                                        label: Center(
                                            child: CustomText(
                                              text: "cvv",
                                              size: 14,
                                              color: Color(0xFFAAAAAA),
                                              weight: FontWeight.w600,
                                            )),
                                        hintStyle: GoogleFonts.montserrat(),
                                        labelStyle: GoogleFonts.roboto(),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: pr365GreyTitleColor),
                                            borderRadius:
                                            BorderRadius.circular(5))),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RegularButton(
                        text: "Cancel",
                        textColor: Colors.black,
                        buttonColor: Colors.white,
                        borderColor: Colors.white,
                        height: 45,
                        width: 160,
                        weight: FontWeight.w600,
                        size: 16,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SavedSearchScreen()));
                        },
                      ),
                      RegularButton(
                        text: "Confirm",
                        textColor: Colors.white,
                        buttonColor: pr365PrimaryColor,
                        borderColor: pr365PrimaryColor,
                        height: 45,
                        width: 160,
                        weight: FontWeight.w600,
                        size: 16,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SharePropertyScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
