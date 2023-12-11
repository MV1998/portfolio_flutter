import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mohit_portfolio/view_models/animation_provider.dart';
import 'package:mohit_portfolio/views/circular_image_view.dart';
import 'package:mohit_portfolio/views/menus.dart';
import 'package:mohit_portfolio/views/social_icons.dart';
import 'package:mohit_portfolio/views/tech_stack.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'dart:math' as math;

late AnimationProvider _animationProvider;


class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {

  @override
  void initState() {
    _animationProvider = Provider.of<AnimationProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.yellow.shade200,
              Colors.yellow.shade900
            ]
            )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Center(
              child: SizedBox(
                width: 85.w,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Header(),
                    Home(),
                    SizedBox(
                      height: 65.0,
                    ),
                    // TechStack(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Text(
            "Mohit Varma",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Menus()
      ],
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late AnimationController animationController;


  @override
  void initState() {
    animationController = AnimationController(vsync: this,
    duration: const Duration(seconds: 10))..repeat(reverse: false);

    animationController.addListener(() {
      _animationProvider.updateAngle(animationController.value);
    });

    // animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 40.w,
          height: 80.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   "Hi, I am Mohit \nVarma",
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodyLarge
              //       ?.copyWith(fontSize: 48.0),
              // ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Hi, I am ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge,
                  ),
                  const SizedBox(height: 100.0),
                  DefaultTextStyle(
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!,
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        RotateAnimatedText("Mohit Varma"),
                        RotateAnimatedText('a Mobile App Developer'),
                        RotateAnimatedText('Self-Learner'),
                        RotateAnimatedText('Enthusiastic'),
                        RotateAnimatedText('a Traveller'),
                      ],
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              //const Text("I'm an experienced Flutter and Android developer with more than 3.5 years of expertise in creating strong and scalable mobile applications. My love for mobile development and focus on details have enabled me to craft user-friendly apps that are both intuitive and surpass user expectations."),
              const Text('''I am a Mobile Application Developer and I love to create apps that would make life easy and enjoyable for people.

I bring excitement and a forward-thinking approach to every project I work on. Turning ideas into reality, especially when faced with challenges, is something I really enjoy.

In my app development work, I make sure to include various tests, organize the code well, and use patterns that make it easy to understand. I also make sure the process of getting the app onto the App and Play store is automated.

Outside of work, I like to read Books, Travelling and also I'm a big fan of Meditation and Yoga too.

I enjoy talking to people and hearing new ideas. I'm always open to discussions, and I'm looking forward to connecting with you. Feel free to get in touch anytime! 🤝'''),
              const SizedBox(
                height: 20.0,
              ),
              const SocialIcons()
            ],
          ),
        ),
        CircularImageView(height: 60.h, width: 30.w,),
      ],
    );
  }
}

class CustomArc extends CustomPainter {
  double angle;
  CustomArc(this.angle);
  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint()..color = Colors.purple
        ..strokeWidth = 4.0
        ..style = PaintingStyle.stroke;
    canvas.drawArc(
      Rect.fromLTRB(0.0, 0.0,
          size.width, size.height),
      math.pi * angle,
      2 * math.pi * angle,
      false,
      p
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}

