import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'Widget/VideoWidget.dart';

void main(){
  runApp(MaterialApp(
    home: Video4(),
  ));
}

class Video4 extends StatefulWidget {
  const Video4({Key? key}) : super(key: key);

  @override
  _Video4State createState() => _Video4State();
}

class _Video4State extends State<Video4> {
  final asset = "VIDEO/Division.mp4";
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
