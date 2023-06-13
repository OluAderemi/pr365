import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr365/StandardElements/StandardWidgets/custom_text.dart';
import 'package:pr365/StandardElements/StandardWidgets/regular_button.dart';
import 'package:pr365/StandardElements/constants.dart';
import 'package:intl/intl.dart';

const List<String> rentList = <String>[
  'Physical',
  'Virtual',
];

class ScheduleInspectionScreen extends StatefulWidget {
  const ScheduleInspectionScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleInspectionScreen> createState() =>
      _ScheduleInspectionScreenState();
}

class _ScheduleInspectionScreenState extends State<ScheduleInspectionScreen> {
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
          "Schedule Inspection",
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
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: CustomText(
                    text: "Note: Tenants must inspect property before renting",
                    size: 14,
                    color: pr365TextBlackColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: CustomText(
                  text: "Type of Inspection",
                  size: 14,
                  color: pr365TextBlackColor,
                  weight: FontWeight.bold,
                ),
              ),
              Center(
                child: Container(
                  height: size.width * 0.12,
                  width: size.width * 0.9,
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
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 250.0),
                            child: const Icon(Icons.keyboard_arrow_down),
                          ),
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
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                child: CustomText(
                  text: "Inspection time and date",
                  size: 14,
                  color: pr365TextBlackColor,
                  weight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: CustomText(
                  text: "Select date and time",
                  size: 14,
                  color: pr365TextBlackColor,
                  weight: FontWeight.bold,
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    _selectDateTime(context);
                  },
                  child: Container(
                    height: size.width * 0.12,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: pr365GreyLineColor, width: 0.5),
                        borderRadius: BorderRadius.circular((5))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: Color(0xFFAAAAAA),
                            //size: 24,
                          ),
                          SizedBox(width: 20),
                          CustomText(
                            text: '${dateFormatter.format(_selectedDateTime)}',
                            color: Color(0xFFAAAAAA),
                            size: 16,
                            weight: FontWeight.w600,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                    ),
                    CustomText(
                      text: 'I agree to tenancy and caution deposit terms.',
                      size: 12,
                      color: pr365TextBlackColor,
                      weight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RegularButton(
                  text: "Schedule Inspection",
                  textColor: Colors.white,
                  buttonColor: pr365PrimaryColor,
                  borderColor: pr365PrimaryColor,
                  height: 50,
                  width: 350,
                  weight: FontWeight.w600,
                  size: 16,
                  press: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/property_images/schedule_inspection_pop_up.png',
                                height: 150,
                                width: 150,
                              ),
                              SizedBox(height: 8),
                              Text('Inspection Request Booked'),
                            ],
                          ),
                          actions: [
                            IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
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
