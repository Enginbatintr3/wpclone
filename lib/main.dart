import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:wpuserinterface/screens/home.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp UI",
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
