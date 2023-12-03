import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Center(
            child: SizedBox(
              width: 85.w,
              child: const Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Header(),
                  SizedBox(
                    height: 100.0,
                  ),
                  Home()
                ],
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
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                onHover: (value) {
                  print(value);
                },
                style:
                    TextButton.styleFrom(backgroundColor: Colors.purpleAccent),
                child:
                    Text("Home", style: Theme.of(context).textTheme.bodyMedium),
              ),
              const SizedBox(
                width: 20.0,
              ),
              TextButton(
                onPressed: () {},
                onHover: (value) {
                  print(value);
                },
                child: Text("Services",
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
              const SizedBox(
                width: 20.0,
              ),
              TextButton(
                onPressed: () {},
                onHover: (value) {
                  print(value);
                },
                child: Text("My Work",
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
              const SizedBox(
                width: 20.0,
              ),
              TextButton(
                onPressed: () {},
                onHover: (value) {
                  print(value);
                },
                child: Text("Contact",
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
              const SizedBox(
                width: 20.0,
              ),
              ElevatedButton(
                onPressed: () {},
                onHover: (value) {
                  print(value);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: Text("Resume",
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 40.w,
          height: 60.h,
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
                    RotateAnimatedText('Mobile App Developer'),
                    RotateAnimatedText('Self-Learner'),
                    RotateAnimatedText('Enthusiastic'),
                    RotateAnimatedText('Traveller'),
                  ],
                  onTap: () {},
                ),
              ),
            ],
          ),
              const SizedBox(
                height: 5.0,
              ),
              const Text("I'm an experienced Flutter and Android developer with more than 3.5 years of expertise in creating strong and scalable mobile applications. My love for mobile development and focus on details have enabled me to craft user-friendly apps that are both intuitive and surpass user expectations."),
            ],
          ),
        ),
        SizedBox(
          height: 400.0,
          width: 400.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(300.0)),
           // clipper: TriangleClipper(),
            child: Image.asset(
              "assets/images/mohitvarma_self.jpg",
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
