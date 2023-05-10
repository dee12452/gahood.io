import 'package:flutter/material.dart';
import 'package:gahoodio/const.dart';
import 'package:gahoodio/widgets/description_text.dart';
import 'package:gahoodio/widgets/intro_widget.dart';
import 'package:gahoodio/widgets/rounded_rectangle_button.dart';
import 'package:gahoodio/widgets/skills_graph.dart';
import 'package:gahoodio/widgets/timeline.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  final String title;
  final _scrollController = ScrollController();

  HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                const IntroWidget(),
                const SizedBox(
                  height: 100,
                ),
                const DescriptionText(
                  text: 'About Me',
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  width: 200,
                  height: 20,
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const DescriptionText(text: aboutMeSection),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              RoundedRectangleButton(
                                  text: 'Resume',
                                  onClick: () async {
                                    await launchUrl(
                                      Uri.parse(
                                        'https://drive.google.com/uc?export=download&id=1kpXzy_5f-EAa6cqM2CkmWtSUPKg2qRFu',
                                      ),
                                    );
                                  },
                                  iconData: Icons.upload_file,
                                ),
                              RoundedRectangleButton(
                                  text: 'Contact Me',
                                  onClick: () {
                                    _scrollController.animateTo(
                                      _scrollController
                                          .position.maxScrollExtent,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeOut,
                                    );
                                  },
                                  iconData: Icons.email_outlined,
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Flexible(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/profilepic.jpg',
                            ),
                            radius: 100,
                          ),
                          DescriptionText(text: 'Adam Charlton'),
                          DescriptionText(text: 'Software Engineer'),
                          DescriptionText(text: 'Greater Seattle Area'),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                const MyTimeline(),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(
                  width: 200,
                  height: 20,
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                const SkillsGraph(),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Contact Me',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(
                  width: 200,
                  height: 20,
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DescriptionText(text: 'Adam Charlton'),
                    DescriptionText(text: '661-904-4938'),
                    DescriptionText(text: 'adam.charlton12452@gmail.com'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: ElevatedButton(
              onPressed: () {
                _scrollController.animateTo(
                  _scrollController.position.minScrollExtent,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.black54,
              ),
              child: const Icon(Icons.arrow_upward),
            ),
          ),
        ],
      ),
    );
  }
}
