import 'package:flutter/material.dart';
import 'package:pr365/Screens/MapScreens/map_filter.dart';

class MapSearchScreen extends StatelessWidget {
  const MapSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MapFilterScreen()));
          },
          child: Container(
            height: 100,
            width: 200,
            child: Text("Click Me"),
          ),
        )),
      ),
    );
  }
}
