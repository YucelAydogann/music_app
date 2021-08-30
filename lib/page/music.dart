import 'package:flutter/material.dart';
import 'iconwidget.dart';
import 'package:audioplayers/audioplayers.dart';
import 'albumphoto.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:intl/intl.dart' as intl;

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  double playLong = 0.00;
  final formatter = intl.NumberFormat('#0.00');

  AudioPlayer player = AudioPlayer();
  String mp3 = "assets/sounds/handeyener.mp3";

  void _playSound() {
    player.play(mp3);
  }

  void _stopSound() {
    player.pause();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.1,
        ),
        albumImage(size),
        SizedBox(
          height: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GradientText(
              "Sahte".toUpperCase(),
              gradientType: GradientType.radial,
              radius: 1.2,
              colors: [Colors.white, Colors.blueGrey],
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Comforta", fontWeight: FontWeight.bold,
              ),
            ),
            GradientText(
              "Hande Yener",

              gradientType: GradientType.radial,
              radius: 3.5,
              colors: [Colors.red, Colors.white],
              style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Comforta", fontSize: 15),
            )
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        playerIcons(size),
      ],
    );
  }

  Widget playerIcons(Size iconSize) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatter.format(playLong).toString(),
                  style: TextStyle(
                    color: Colors.white60,
                  ),
                ),
                Text(
                  "3:40",
                  style: TextStyle(
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
          ),

          SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Color(0xFFd1c4e9),
                  activeTrackColor: Color(0xFF9575cd),
                  thumbColor: Color(0xff673ab7),
                  overlayColor: Color(0xFF7e57c2),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 9),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 15)
              ),
              child: Slider(

                  value: playLong.toDouble(),
                  min: 0.0, max: 3.40,
                  onChanged: (double newValue){
                    setState(() {
                      playLong = newValue.toDouble();
                    });
                  }
              )
          ),

          SizedBox(
            height: iconSize.height * 0.06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Iconsar(
                  icon: Icons.fast_rewind,
                  color: Color(0xFF7e57c2),
                  onPress: () {}),
              SizedBox(width: 20),
              Iconsar(
                  icon: Icons.play_arrow,
                  color: Color(0xFF512da8),
                  onPress: () {
                    _playSound();
                  }),
              SizedBox(width: 20),
              Iconsar(
                  icon: Icons.stop,
                  color: Color(0xFF512da8),
                  onPress: () {
                    _stopSound();
                  }),
              SizedBox(width: 20),
              Iconsar(
                  icon: Icons.fast_forward,
                  color: Color(0xFF7e57c2),
                  onPress: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
