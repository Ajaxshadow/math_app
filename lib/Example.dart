import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Example(),
  ));
}

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  AssetsAudioPlayer player = AssetsAudioPlayer();
  AssetsAudioPlayer player2 = AssetsAudioPlayer();
  AssetsAudioPlayer player3 = AssetsAudioPlayer();

  @override
  void initState(){
    super.initState();
    player.open(Audio('AUDIO/suctionpop.mp3'));
    player2.open(Audio('AUDIO/Applause.mp3'));
    player3.open(Audio('AUDIO/Aww.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {  },
              child: Text('Sound'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {  },
              child: Text('Sound2'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {  },
              child: Text('Sound3'),
            ),
          ),
        ],
      ),
    );
  }
}
