import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCard extends StatelessWidget {
  String name;
  double time;
  String message;
  TaskCard(
      {Key? key, required this.name, required this.time, required this.message})
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
              minRadius: 25,
              backgroundImage: AssetImage(
                "assets/images/avatar.jpg",
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
                height: 6,
              ),
              Text(
                message.length >= 25
                    ? "${message.substring(0, 24)}..."
                    : message,
                style: GoogleFonts.openSans(),
              ),
            ],
          ),
          Spacer(),
          Padding(
            child: Text(
              time.toString(),
              style: GoogleFonts.openSans(),
            ),
            padding: EdgeInsets.only(right: 15, bottom: 8),
          ),
        ],
      ),
    );
  }
}
