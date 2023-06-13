import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/Screens/PropertyScreens/checkout.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';
import 'package:intl/intl.dart';

const List<String> rentList = <String>[
  '1 month',
  '2 months',
  '3 months',
  '4 months',
  '5 months',
  '6 months',
  '7 months',
  '8 months',
  '9 months',
  '10 months',
  '11 months',
  '12 months',
];

class MakePaymentsScreen extends StatefulWidget {
  const MakePaymentsScreen({Key? key}) : super(key: key);

  @override
  State<MakePaymentsScreen> createState() =>
      _MakePaymentsScreenState();
}

class _MakePaymentsScreenState extends State<MakePaymentsScreen> {
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
          "Make Payment",
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
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: CustomText(
                  text: "\$1200/month",
                  size: 14,
                  color: pr365TextBlackColor,
                  weight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: CustomText(
                  text: "Caution deposit: \$1200",
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
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Duration",
                          size: 14,
                          color: pr365TextBlackColor,
                          weight: FontWeight.bold,
                        ),
                        Center(
                          child: Container(
                            height: size.width * 0.12,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                border: Border.all(color: pr365GreyLineColor, width: 0.5),
                                borderRadius: BorderRadius.circular((5))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Center(
                                  //     child:
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    elevation: 16,
                                    style:
                                    GoogleFonts.montserrat(color: pr365GreyLineColor),
                                    underline: Container(
                                      height: 0,
                                      color: Colors.deepPurpleAccent,
                                      width: 2000,
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
                                          child: CustomText(
                                            text: value,
                                            color: Color(0xFFAAAAAA),
                                            size: 16,
                                            weight: FontWeight.w600,
                                          ));
                                    }).toList(),
                                  ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Payment plan",
                          size: 14,
                          color: pr365TextBlackColor,
                          weight: FontWeight.bold,
                        ),
                        Center(
                          child: Container(
                            height: size.width * 0.12,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                border: Border.all(color: pr365GreyLineColor, width: 0.5),
                                borderRadius: BorderRadius.circular((5))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Center(
                                  //     child:
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    elevation: 16,
                                    style:
                                    GoogleFonts.montserrat(color: pr365GreyLineColor),
                                    underline: Container(
                                      height: 0,
                                      color: Colors.deepPurpleAccent,
                                      width: 2000,
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
                                          child: CustomText(
                                            text: value,
                                            color: Color(0xFFAAAAAA),
                                            size: 16,
                                            weight: FontWeight.w600,
                                          ));
                                    }).toList(),
                                  ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Book as",
                          size: 14,
                          color: pr365TextBlackColor,
                          weight: FontWeight.bold,
                        ),
                        Center(
                          child: Container(
                            height: size.width * 0.12,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                border: Border.all(color: pr365GreyLineColor, width: 0.5),
                                borderRadius: BorderRadius.circular((5))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Center(
                                  //     child:
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    elevation: 16,
                                    style:
                                    GoogleFonts.montserrat(color: pr365GreyLineColor),
                                    underline: Container(
                                      height: 0,
                                      color: Colors.deepPurpleAccent,
                                      width: 2000,
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
                                          child: CustomText(
                                            text: value,
                                            color: Color(0xFFAAAAAA),
                                            size: 16,
                                            weight: FontWeight.w600,
                                          ));
                                    }).toList(),
                                  ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Move in date",
                          size: 14,
                          color: pr365TextBlackColor,
                          weight: FontWeight.bold,
                        ),
                        Center(
                          child: Container(
                            height: size.width * 0.12,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                border: Border.all(color: pr365GreyLineColor, width: 0.5),
                                borderRadius: BorderRadius.circular((5))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Center(
                                  //     child:
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    elevation: 16,
                                    style:
                                    GoogleFonts.montserrat(color: pr365GreyLineColor),
                                    underline: Container(
                                      height: 0,
                                      color: Colors.deepPurpleAccent,
                                      width: 2000,
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
                                          child: CustomText(
                                            text: value,
                                            color: Color(0xFFAAAAAA),
                                            size: 16,
                                            weight: FontWeight.w600,
                                          ));
                                    }).toList(),
                                  ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Monthly rent",
                          color: pr365GreyLineColor,
                          size: 14,
                          weight: FontWeight.bold,
                        ),
                        SizedBox(height: 20,),
                        CustomText(
                          text: "Security deposit",
                          color: pr365GreyLineColor,
                          size: 14,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        CustomText(
                          text: "\$1200",
                          color: pr365GreyTitleColor,
                          size: 14,
                          weight: FontWeight.bold,
                        ),
                        SizedBox(height: 20,),
                        CustomText(
                          text: "\$1200",
                          color: pr365GreyTitleColor,
                          size: 14,
                          weight: FontWeight.bold,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomText(
                      text: "\$3600",
                      color: pr365GreyTitleColor,
                      size: 16,
                      weight: FontWeight.bold,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.security_outlined,
                      //color: Color(0xFFAAAAAA),
                      //size: 24,
                    ),
                    SizedBox(width: 20,),
                    CustomText(
                      text: "Includes PR365 Caution Deposit Protection.",
                      color: pr365GreyTitleColor,
                      size: 12,
                      weight: FontWeight.w600,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RegularButton(
                  text: "Pay now",
                  textColor: Colors.white,
                  buttonColor: pr365PrimaryColor,
                  borderColor: pr365PrimaryColor,
                  height: 50,
                  width: 350,
                  weight: FontWeight.w600,
                  size: 16,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckoutScreen()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
