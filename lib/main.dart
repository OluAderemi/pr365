// import 'package:events_intelbox_project/Screens/Authentication/authentication.dart';
// import 'package:events_intelbox_project/Screens/OnBoardingScreens/on_boarding_screens.dart';
// import 'package:events_intelbox_project/StandardElements/constants.dart';
import 'package:flutter/material.dart';
import 'package:pr365/Screens/OnBoardingScreens/on_boarding_screens.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //scaffoldBackgroundColor: eventsPrimaryColor,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const OnBoardingScreen(),
    );
  }
}



