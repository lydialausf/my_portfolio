import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/gen/app_ui.dart';

import 'package:my_portfolio/global/global.dart';
import 'package:url_launcher/url_launcher.dart';

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

class _MyPortfolioBodyState extends State<MyPortfolioBody> {
  final _todoList = 'https://todolist-fxv6.vercel.app/';
  final _newsApi = "https://github.com/lydialausf/newsapi.git";

  final List<Map<String, dynamic>> workExperiences = [
    {
      'companyLogo': Assets.images.logo.image(width: 100, height: 100),
      'title': "Flutter Developer @ Discovery Holiday Parks",
      'subtitle':
          "\u2022 Revamped WikiCamps using Flutter and BLoC as the state management.\n\u2022 Collaborated with UI/UX designer to implement user interface.\n\u2022 Use bloc_test for integration unit testing to ensure every widget functions accordingly.\n\u2022 Utilized tools such as Jira, Confluence, and AzureDevOps for project management and version control.\n\u2022 Worked closely with backend to fetch and post data.",
      'trailing': "Adelaide, Australia - 07/2024 - 01/2024"
    },
    {
      'companyLogo': Assets.images.logo1.image(width: 100, height: 100),
      'title': "Flutter Developer @ Crennotech Pty Ltd",
      'subtitle':
          "\u2022 Built a cleaning service app called CleanTasker using Flutter and GetX as the state management.\n\u2022 Collaborated with UI/UX and create interfaces accordingly.\n\u2022 Worked closely with backend to fetch and post data.",
      'trailing': "Sydney, Australia - 08/2022 - 07/2023"
    },
    {
      'companyLogo': Assets.images.logo3.image(width: 100, height: 100),
      'title': "Intern @ Crennotech Pty Ltd (Assigned by university)",
      'subtitle':
          "\u2022 Led a team of four to develop a cross-platform mobile application using Flutter/Dart as frontend and Firebase to handle backend.\n\u2022 Our team successfully developed an app called Connested, which is a social media app for university students to connect with each other during COVID.\n\u2022 Conducted daily stand-up meetings to discuss progress and issues.\n\u2022 Utilized Git for version control.\n\u2022 Implemented chat functionality using Firebase.",
      'trailing': "Sydney, Australia - 03/2022 - 05/2022"
    },
    {
      'companyLogo': Assets.images.logo2.image(width: 100, height: 100),
      'title': "Intern @ Authentica (Exchange Program - Remote due to COVID)",
      'subtitle':
          "\u2022 Enrolled to 2 weeks remote program and was assigned to help a renewable energy company to re-design their website.\n\u2022 Worked alongside with one of my team member to re-design and add new functions/features to the website using WordPress.",
      'trailing': "Remote (Online) - 09/2022 - 9/2022"
    },
  ];

  final List<Map<String, dynamic>> education = [
    {
      'companyLogo': Assets.images.logo3.image(width: 100, height: 100),
      'title': "Western Sydney University",
      'subtitle':
          "\u2022 Enrolled in Bachelor of Information and Communications Technology - Major in Mobile Computing.\n\u2022 Graduated with GPA 5.467/7.\n\u2022 Completed a capstone project called Connested, a social media app for university students to connect with each other during COVID.\n\u2022 Taken the following subjects: Technologies for Web Applications, Human-Computer Interaction, Database Design and Development, Object Oriented Analysis, Computer Networking, LAN Workshop, Social Web Analysis, Web Systems Development, Computer Networks and Internets, Wireless and Mobile Networks, Professional Development, Mobile Applications Development, Technologies for Mobile Applications, Network Security, Operating Systems Programming, Social Computing, Professional Experience.",
      'trailing': "Sydney, Australia - 06/2020 - 06/2022"
    },
    {
      'companyLogo': Assets.images.logo7.image(width: 100, height: 100),
      'title': "Sophia University (Exchange Program - Remote)",
      'subtitle':
          "\u2022 Enrolled and completed an online course in Japanese Beginners during my semester break.",
      'trailing': "Sydney, Australia - 06/2021 - 07/2021"
    },
    {
      'companyLogo': Assets.images.logo6.image(width: 100, height: 100),
      'title': "Sydney Institute of Business and Technology (SIBT)",
      'subtitle': "\u2022 Enrolled in Diploma of Information Technology.",
      'trailing': "Sydney, Australia - 06/2019 - 06/2020"
    },
    {
      'companyLogo': Assets.images.logo6.image(width: 100, height: 100),
      'title': "Sydney Institute of Business and Technology (SIBT)",
      'subtitle':
          "\u2022 Enrolled in Foundation program and completed within 6 months.",
      'trailing': "Sydney, Australia - 01/2019 - 06/2019"
    },
    {
      'companyLogo': Assets.images.logo5.image(width: 100, height: 100),
      'title': "Taylors College Sydney (Higher School Certificate - HSC)",
      'subtitle':
          "\u2022 Participated and won in Women's Badminton Competition. \n\u2022 Enrolled in Spanish Language Course.\n\u2022 Did not complete the course due to personal reasons. (Completed Year 10 - Year 11)",
      'trailing': "Sydney, Australia - 06/2016 - 02/2018"
    },
    {
      'companyLogo': Assets.images.logo4.image(width: 100, height: 100),
      'title': "Woodford International School (IGCSE)",
      'subtitle':
          "\u2022 Assisted in a charity event to fund for movie night.\n\u2022 Participated in a music play.\n\u2022 Participated in local rugby tournament, sports carnival and, school camping",
      'trailing': "Solomon Islands, Honiara - 06/2013 - 07/2016"
    },
    {
      'companyLogo': Assets.images.logo8.image(width: 100, height: 100),
      'title': "SMK Green Road",
      'subtitle':
          "\u2022 Finished Form 1.\n\u2022 Left Malaysia during Form 2 for Solomon Islands, Honiara.",
      'trailing': "Kuching, Malaysia - 2012 - 2013"
    },
    {
      'companyLogo': Assets.images.logo9.image(width: 100, height: 100),
      'title': "SK Green Road",
      'subtitle': "\u2022 Achieved 2A 2B 1C in UPSR.",
      'trailing': "Kuching, Malaysia - 2006 - 2011"
    },
  ];

  final List<Map<String, dynamic>> skills = [
    {'skillLogo': Assets.images.flutterlogo.image()},
    {'skillLogo': Assets.images.amazon.image()},
    {'skillLogo': Assets.images.androidstudio.image()},
    {'skillLogo': Assets.images.firebase.image()},
    {'skillLogo': Assets.images.css.image()},
    {'skillLogo': Assets.images.html5.image()},
    {'skillLogo': Assets.images.php.image()},
    {'skillLogo': Assets.images.teamplayer.image()},
    {'skillLogo': Assets.images.wordpress.image()},
  ];

  Future<void> _launchUrl(String url) async {
    final uri = Uri.tryParse(url);
    if (uri != null && await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = context.isScreenSmall;
    return CustomScrollView(
      slivers: [
        !isSmallScreen
            ? const SliverToBoxAdapter(
                child: Row(
                  children: [
                    SpinningWidget(),
                    SizedBox(width: 20),
                    Expanded(child: IntroductionWidget()),
                  ],
                ),
              )
            : const SliverToBoxAdapter(
                child: Column(
                children: [
                  SpinningWidget(),
                  SizedBox(height: 20),
                  IntroductionWidget(),
                ],
              )),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Text("My Projects - In Progress",
                  style: TextStyle(fontSize: 30)),
              TextButton(
                  onPressed: () => _launchUrl(_todoList),
                  child: const Text("Firebase Todo List App")),
              TextButton(
                  onPressed: () => _launchUrl(_newsApi),
                  child: const Text("NewsAPI App GitHub")),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text("My Work Experience", style: TextStyle(fontSize: 30)),
              SizedBox(height: 50),
            ],
          ),
        ),
        SliverList.separated(
          itemCount: workExperiences.length,
          itemBuilder: (context, index) {
            return ListTileWidget(
                image: workExperiences[index]['companyLogo'],
                title: workExperiences[index]['title'],
                subtitle: workExperiences[index]['subtitle'],
                leading: workExperiences[index]['companyLogo'],
                trailing: workExperiences[index]['trailing']);
          },
          separatorBuilder: (context, index) => const Divider(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 50),
        ),
        const SliverToBoxAdapter(
          child: Text("My Education", style: TextStyle(fontSize: 30)),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 50),
        ),
        SliverList.separated(
          itemCount: education.length,
          itemBuilder: (context, index) {
            return ListTileWidget(
                image: education[index]['companyLogo'],
                title: education[index]['title'],
                subtitle: education[index]['subtitle'],
                leading: education[index]['companyLogo'],
                trailing: education[index]['trailing']);
          },
          separatorBuilder: (context, index) => const Divider(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 50),
        ),
        const SliverToBoxAdapter(
          child: Text("My Skills", style: TextStyle(fontSize: 30)),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 50),
        ),
        SliverToBoxAdapter(
            child: CarouselSlider.builder(
                itemCount: skills.length,
                itemBuilder: (context, itemIndex, pageView) => Container(
                      child: skills[itemIndex]['skillLogo'],
                    ),
                options: CarouselOptions(
                    autoPlay: true, viewportFraction: 1, height: 240))),
        const SliverToBoxAdapter(
          child: SizedBox(height: 50),
        ),
        const SliverToBoxAdapter(
          child: Text("Referral", style: TextStyle(fontSize: 30)),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 50),
        ),
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Lee Van Hooff - Senior Full Stack Engineer @ Budgetly"),
              Text(
                  "Luke Moody - Flutter & Dart Google Developer Expert and Founder @ CleerConsulting"),
              Text(
                  "Kiran Vilasagaram - Founder, IT Manager, Strategic Innovator @ Crennotech Pty Ltd"),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 30),
        ),
        const SliverToBoxAdapter(
          child: Text("Get in touch with me", style: TextStyle(fontSize: 30)),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 30),
        ),
        const SliverToBoxAdapter(
            child: Wrap(
          children: [
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(
                  width: 20,
                ),
                Text("stam_pin@hotmail.com"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(
                  width: 20,
                ),
                Text("+60163359959"),
              ],
            )
          ],
        )),
      ],
    );
  }
}
