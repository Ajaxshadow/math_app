import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'Widget/VideoWidget.dart';

void main(){
  runApp(MaterialApp(
    home: Video2(),
  ));
}

class Video2 extends StatefulWidget {
  const Video2({Key? key}) : super(key: key);

  @override
  _Video2State createState() => _Video2State();
}

class _Video2State extends State<Video2> {
  final asset = "VIDEO/Subtraction.mp4";
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
