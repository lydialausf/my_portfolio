import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/gen/assets.gen.dart';

/// {@template about_me_body}
/// Body of the AboutMePage.
///
/// Add what it does
/// {@endtemplate}
class AboutMeBody extends StatefulWidget {
  /// {@macro about_me_body}
  const AboutMeBody({super.key});

  @override
  State<AboutMeBody> createState() => _AboutMeBodyState();
}

final List<dynamic> imageList = [
  {
    'image': Assets.images.climbing.image(),
  },
  {
    'image': Assets.images.climbing1.image(),
  },
  {
    'image': Assets.images.range.image(),
  },
];

class _AboutMeBodyState extends State<AboutMeBody> {
  bool showWidget = false;

  void showHobbyDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text(
              "Badminton, playing video games, hiking, and trying out new things!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "I love to try new things.. ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            CarouselSlider.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  child: imageList[index]['image'],
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                height: 240,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "I am originally from... ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                showWidget
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            showWidget = !showWidget;
                          });
                        },
                        child: const Text(
                            "Kuching, Sarawak, Malaysia - the home of Kuching City!"),
                      )
                    : TextButton(
                        onPressed: () {
                          setState(() {
                            showWidget = !showWidget;
                          });
                        },
                        child: const Text('Take a guess?')),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "My hobbies are... ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () => showHobbyDialog(),
                child: const Text("Click here to reveal"))
          ],
        ),
      )
    ]);
  }
}
