import 'package:flutter/material.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(255, 231, 236, 223)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SelectableText(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ));
  }
}
