import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Animated Text Widget',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText("Abdullah Al Mahmud",
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      speed: const Duration(milliseconds: 200)),
                ],
                totalRepeatCount: 5,
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText(
                    "Hello",
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.w600),
                  ),
                  RotateAnimatedText(
                    "beautiful",
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.w600),
                  ),
                  RotateAnimatedText(
                    "World!",
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
                // totalRepeatCount: 5,
                // displayFullTextOnTap: true,
                // stopPauseOnTap: true,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    "Hello World!",
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
