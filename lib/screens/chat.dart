import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wpuserinterface/models/users.dart';
import 'package:wpuserinterface/widgets/field.dart';
import 'dart:math' as math;

import 'package:wpuserinterface/widgets/message.dart';

class ChatD extends StatefulWidget {
  late String name;
  late String message;

  ChatD({required this.name, required this.message});

  @override
  _ChatDState createState() => _ChatDState();
}

class _ChatDState extends State<ChatD> {
  TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, index) {
                return Message(
                  widget: widget,
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                30,
              ),
              color: Colors.black38,
            ),
            alignment: Alignment.bottomCenter,
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(Icons.tag_faces),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        controller: message,
                        decoration: InputDecoration(
                            hintText: "Message...",
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Transform.rotate(
                      child: Icon(Icons.attach_file, color: Colors.grey),
                      angle: -math.pi / -4,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.camera),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
