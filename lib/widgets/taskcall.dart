import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class TaskCallCard extends StatelessWidget {
  String name;
  double time;
  String day;
  IconData iconData1;
  IconData iconData2;
  TaskCallCard({
    Key? key,
    required this.name,
    required this.time,
    required this.day,
    required this.iconData1,
    required this.iconData2,
  }) : super(key: key);

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
                height: 4,
              ),
              Row(
                children: [
                  Transform.rotate(
                    child: Icon(iconData1, color: Colors.green),
                    angle: -math.pi / -4,
                  ),
                  Text(
                    "$day $time",
                    style: GoogleFonts.openSans(),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Padding(
            child: Icon(iconData2),
            padding: EdgeInsets.only(right: 15, bottom: 8),
          ),
        ],
      ),
    );
  }
}
