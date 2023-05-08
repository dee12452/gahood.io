import 'package:flutter/material.dart';
import 'package:gahoodio/const.dart';
import 'package:gahoodio/widgets/intro_widget.dart';
import 'package:gahoodio/widgets/timeline.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const IntroWidget(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                    child: Column(
                  children: const [
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      aboutMeSection,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2,
                        height: 1.5,
                      ),
                    ),
                  ],
                )),
                Column(
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/profilepic.jpg'),
                      radius: 100,
                    ),
                    Text(
                      'Adam Charlton',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      'Software Engineer',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2,
                        height: 1.5,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const MyTimeline(),
          ],
        ),
      ),
    );
  }
}
