import 'package:flutter/material.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(255, 231, 236, 223)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Hello! Welcome to my portfolio! I am Lydia, a Flutter Developer. I am passionate about creating functional apps. I love to explore new things and learn new technologies. I am a quick learner and a team player. I am always ready to take on new challenges and work on exciting projects. I am looking forward to working with you, even more eager to learn things that I am not familiar with!",
            style: TextStyle(fontSize: 20),
          ),
        ));
  }
}
