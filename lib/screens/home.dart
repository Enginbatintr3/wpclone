import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wpuserinterface/models/time.dart';
import 'package:wpuserinterface/models/user.dart';
import 'package:wpuserinterface/models/users.dart';
import 'package:wpuserinterface/screens/chat.dart';
import 'package:wpuserinterface/widgets/taskcall.dart';
import 'package:wpuserinterface/widgets/taskcard.dart';
import 'package:wpuserinterface/widgets/taskcardstory.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CameraController controller;
  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras![0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
              Tab(
                icon: Icon(Icons.camera),
              ),
            ],
          ),
          title: Text("Whatsapp"),
          actions: [
            Icon(
              Icons.search,
              size: 28,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.more_vert,
              size: 28,
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  height: 2,
                  color: Colors.white38,
                ),
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatD(
                            name: users[index].name,
                            message: users[index].message,
                          ),
                        ),
                      );
                    },
                    child: TaskCard(
                      name: users[index].name,
                      time: users[index].time.clock,
                      message: users[index].message,
                    ),
                  );
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TaskCardStory(
                  name: "My Status",
                  time: Time(day: "Yesterday", clock: 8.46),
                  iconData: Icons.more_horiz,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 18,
                    top: 10,
                    bottom: 10,
                    left: 10,
                  ),
                  child: Text(
                    "Updates Seen",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, index) => Divider(
                      height: 2,
                      color: Colors.white38,
                    ),
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      return TaskCardStory(
                        name: users[index].name,
                        time: users[index].time,
                      );
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, index) => Divider(
                  height: 2,
                  color: Colors.white38,
                ),
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  return TaskCallCard(
                    name: users[index].name,
                    time: users[index].time.clock,
                    day: users[index].time.day,
                    iconData1: users[index].iconData1,
                    iconData2: users[index].iconData2,
                  );
                },
              ),
            ),
            CameraPreview(controller),
          ],
        ),
      ),
    );
  }
}
