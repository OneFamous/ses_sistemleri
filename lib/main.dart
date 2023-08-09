import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: TextButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource('ridebel.wav'));
            },
            child: Container(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
