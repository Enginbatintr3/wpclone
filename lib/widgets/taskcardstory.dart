import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wpuserinterface/models/time.dart';

class TaskCardStory extends StatelessWidget {
  String name;
  IconData? iconData;
  Time time;
  TaskCardStory(
      {Key? key, required this.name, this.iconData, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8, bottom: 10, top: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              minRadius: 30,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 28,
                backgroundImage: AssetImage(
                  "assets/images/avatar.jpg",
                ),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "${time.day}, ${time.clock}",
                style: GoogleFonts.openSans(),
              ),
            ],
          ),
          Spacer(),
          Padding(
            child: Icon(iconData),
            padding: EdgeInsets.only(right: 15, bottom: 8),
          ),
        ],
      ),
    );
  }
}
