import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'Widget/VideoWidget.dart';

void main(){
  runApp(MaterialApp(
    home: Video1(),
  ));
}

class Video1 extends StatefulWidget {
  const Video1({Key? key}) : super(key: key);

  @override
  _Video1State createState() => _Video1State();
}

class _Video1State extends State<Video1> {
  final asset = "VIDEO/Video1.mp4";
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
