import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BasicOverlay extends StatelessWidget {
  final VideoPlayerController controller;

  const BasicOverlay({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: (){
      controller.value.isPlaying
          ? controller.pause()
          : controller.play();
    },
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
        height: 20,
        child: buildIndicator(),
        ),
      ],
    ),
  );

  Widget buildIndicator() => VideoProgressIndicator(
      controller,
      allowScrubbing: true);

  Widget buildPlay() => controller.value.isPlaying
      ? Container()
      : Container(
    alignment: Alignment.center,
    child: Icon(Icons.play_arrow, color: Colors.white, size: 30,),
  );
}
