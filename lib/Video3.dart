import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'Widget/VideoWidget.dart';

void main(){
  runApp(MaterialApp(
    home: Video3(),
  ));
}

class Video3 extends StatefulWidget {
  const Video3({Key? key}) : super(key: key);

  @override
  _Video3State createState() => _Video3State();
}

class _Video3State extends State<Video3> {
  final asset = "VIDEO/Multiplication.mp4";
  late VideoPlayerController controller;

  @override
  void initState(){
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() {})
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoWidget(controller: controller);
  }
}
