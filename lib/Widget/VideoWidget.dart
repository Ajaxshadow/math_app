import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'BasicOverlay.dart';

class VideoWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoWidget({
    Key? key,
    required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
  controller != null && controller.value.isInitialized
      ? Container(alignment: Alignment.topCenter, child: buildVideo(),)
      : Container(
        height: 200,
          child: Center(
              child: CircularProgressIndicator(),
          )
  );

  Widget buildVideo() => Stack(
      children: <Widget>[
        buildVideoPlayer(),
        Positioned.fill(
          child: BasicOverlay(controller: controller),
        ),
      ],
  );

  Widget buildVideoPlayer() => AspectRatio(
    aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller));
}
