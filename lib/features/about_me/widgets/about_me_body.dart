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

class _AboutMeBodyState extends State<AboutMeBody> {
  bool showWidget = false;

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
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return Assets.images.climbing.image();
              },
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                enlargeCenterPage: true,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "I am originally from... ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
            )
            // const Text(
            //   "I am originally from ",
            //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            // ),
            // showWidget
            //     ? GestureDetector(
            //         onTap: () {
            //           setState(() {
            //             showWidget = !showWidget;
            //           });
            //         },
            //         child: const Text(
            //             'Kuching, Sarawak, Malaysia - the home of Kuching City!'),
            //       )
            //     : TextButton(
            //         onPressed: () {
            //           setState(() {
            //             showWidget = !showWidget;
            //           });
            //         },
            //         child: const Text('Take a guess?'))
          ],
        ),
      )
    ]);
  }
}
