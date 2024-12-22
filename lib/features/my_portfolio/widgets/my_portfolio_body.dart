import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:my_portfolio/gen/assets.gen.dart';

/// {@template my_portfolio_body}
/// Body of the MyPortfolioPage.
///
/// Add what it does
/// {@endtemplate}
class MyPortfolioBody extends StatefulWidget {
  /// {@macro my_portfolio_body}
  const MyPortfolioBody({super.key});

  @override
  State<MyPortfolioBody> createState() => _MyPortfolioBodyState();
}

class _MyPortfolioBodyState extends State<MyPortfolioBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<Map<String, dynamic>> workExperiences = [
    {
      'companyLogo': Assets.images.logo.image(width: 100, height: 100),
      'title': "Flutter Developer @ Discovery Holiday Parks",
      'subtitle':
          "\u2022 Revamped WikiCamps using Flutter and BLoC as the state management.\n\u2022 Collaborated with UI/UX designer to implement user interface.\n\u2022 Use bloc_test for integration unit testing to ensure every widget functions accordingly.\n\u2022 Utilized tools such as Jira, Confluence, and AzureDevOps for project management and version control.\n\u2022 Worked closely with backend to fetch and post data.",
    },
    {
      'companyLogo': Assets.images.logo1.image(width: 100, height: 100),
      'title': "Flutter Developer @ Crennotech Pty Ltd",
      'subtitle':
          "\u2022 Built a cleaning service app called CleanTasker using Flutter and GetX as the state management.\n\u2022 Collaborated with UI/UX and create interfaces accordingly.\n\u2022 Worked closely with backend to fetch and post data.",
    },
    {
      'companyLogo': Assets.images.logo3.image(width: 100, height: 100),
      'title': "Intern @ Crennotech Pty Ltd (Assigned by university)",
      'subtitle':
          "\u2022 Led a team of four to develop a cross-platform mobile application using Flutter/Dart as frontend and Firebase to handle backend.\n\u2022 Our team successfully developed an app called Connested, which is a social media app for university students to connect with each other during COVID.\n\u2022 Conducted daily stand-up meetings to discuss progress and issues.\n\u2022 Utilized Git for version control.\n\u2022 Implemented chat functionality using Firebase.",
    },
    {
      'companyLogo': Assets.images.logo2.image(width: 100, height: 100),
      'title': "Intern @ Authentica (Remote)",
      'subtitle':
          "\u2022 Enrolled to 1-month remote program and was assigned to help a renewable energy company to re-design their website.\n\u2022 Worked alongside with one of my team member to re-design and add new functions/features to the website using WordPress.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (_controller.isAnimating) {
                        _controller.stop();
                      } else {
                        _controller.repeat();
                      }
                    },
                    child: AnimatedBuilder(
                      animation: _controller,
                      child: CircleAvatar(
                        radius: 100,
                        child: ClipOval(
                            child: Assets.images.r.image(
                                fit: BoxFit.cover, height: 200, width: 200)),
                      ),
                      builder: (BuildContext context, Widget? child) {
                        return Transform.rotate(
                          angle: _controller.value * 2.0 * math.pi,
                          child: child,
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 50),
                  const Expanded(
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromARGB(255, 231, 236, 223)),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Hello! Welcome to my portfolio! I am Lydia, a Flutter Developer. I am passionate about creating functional apps. I love to explore new things and learn new technologies. I am a quick learner and a team player. I am always ready to take on new challenges and work on exciting projects. I am looking forward to working with you, even more eager to learn things that I am not familiar with!",
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              const Text("My Work Experience", style: TextStyle(fontSize: 30)),
              const SizedBox(height: 50),
            ],
          ),
        ),
        SliverList.separated(
          itemCount: workExperiences.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: workExperiences[index]['companyLogo'],
              title: Text(
                  workExperiences[index]['title'] ?? "Work Experience $index"),
              subtitle:
                  Text(workExperiences[index]['subtitle'] ?? "Subtitle $index"),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
        )
      ],
    );
  }
}
