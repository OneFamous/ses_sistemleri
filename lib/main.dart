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
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  DrumPage({super.key});

  final player = AudioPlayer();

  sesiCal(String ses) {
    player.play(AssetSource('$ses.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await sesiCal('bongo');
                      },
                      child: Container(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await sesiCal('bip');
                    },
                    child: Container(color: Colors.redAccent),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await sesiCal('woo');
                    },
                    child: Container(color: Colors.yellow),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await sesiCal('clap1');
                    },
                    child: Container(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await sesiCal('clap2');
                    },
                    child: Container(color: Colors.brown),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await sesiCal('clap3');
                    },
                    child: Container(color: Colors.cyanAccent),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await sesiCal('crash');
                    },
                    child: Container(color: Colors.lime),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await sesiCal('how');
                    },
                    child: Container(color: Colors.deepPurple),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
