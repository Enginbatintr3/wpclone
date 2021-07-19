import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wpuserinterface/screens/chat.dart';

class Message extends StatelessWidget {
  Message({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ChatD widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 250, top: 450, left: 20),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.black38,
        ),
        alignment: Alignment.bottomLeft,
        child: Center(
          child: Text(
            widget.message,
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
