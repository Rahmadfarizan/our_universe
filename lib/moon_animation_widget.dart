import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:our_universe/constant.dart';
import 'package:rive/rive.dart';

import 'main.dart';

class MoonAnimationWidget extends StatefulWidget {
  const MoonAnimationWidget({Key? key}) : super(key: key);

  @override
  State<MoonAnimationWidget> createState() => _MoonAnimationWidgetState();
}

class _MoonAnimationWidgetState extends State<MoonAnimationWidget> {
  /// Controller for playback
  late RiveAnimationController _controller;
  String animations = "moon animation";
  String audioasset = "mp3/intro.mp3";
  final AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation(animations);
    startSplashScreen();
    player.play(AssetSource(audioasset));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  startSplashScreen() async {
    var duration = const Duration(milliseconds: 6800);
    return Future.delayed(duration, () {
      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 3,
              child: RiveAnimation.asset(
                'assets/rive/moon_scan.riv',
                controllers: [_controller],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText("We are\n part of this",
                          textStyle: kTurretRoadBold.copyWith(
                            fontSize: 36,
                          ),
                          textAlign: TextAlign.center,
                          colors: colorizeWhite,
                          speed: const Duration(milliseconds: 500)),
                    ],
                    isRepeatingAnimation: false,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText("Universe!",
                          textStyle: kTurretRoadBold.copyWith(
                            fontSize: 36,
                            color: kOrange,
                          ),
                          colors: colorizeOrange,
                          textAlign: TextAlign.center,
                          speed: const Duration(milliseconds: 500)),
                    ],
                    isRepeatingAnimation: false,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                          "Learn more about the universe\n where we all live.",
                          textStyle: kTurretRoadMedium.copyWith(
                            fontSize: 14,
                            color: kGrey,
                          ),
                          textAlign: TextAlign.center,
                          colors: colorizeGrey,
                          speed: const Duration(milliseconds: 180)),
                    ],
                    isRepeatingAnimation: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
