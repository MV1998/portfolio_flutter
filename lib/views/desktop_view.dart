import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mohit_portfolio/view_models/animation_provider.dart';
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
              const SizedBox(
                height: 5.0,
              ),
              const SocialIcons()
            ],
          ),
        ),
        // SizedBox(
        //   height: 400.0,
        //   width: 400.0,
        //   child: ClipRRect(
        //     borderRadius: const BorderRadius.all(Radius.circular(300.0)),
        //     // clipper: TriangleClipper(),
        //     child: Image.asset(
        //       "assets/images/mohitvarma_self.jpg",
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
        AnimatedBuilder(
          animation: animationController,
        builder: (_, child) {
          return CustomPaint(
            painter: CustomArc(animationController.value),
            child: child,
          );
        },
          child: SizedBox(
            height: 400.0,
            width: 400.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(300.0)),
                // clipper: TriangleClipper(),
                child: Image.asset(
                  "assets/images/mohitvarma_self.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),),
        // Consumer<AnimationProvider>(
        //   builder: (_, value, child) {
        //     return CustomPaint(
        //       painter: CustomArc(value.angle),
        //       child: child,
        //     );
        //   },
        //   child: SizedBox(
        //     height: 400.0,
        //     width: 400.0,
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: ClipRRect(
        //         borderRadius: const BorderRadius.all(Radius.circular(300.0)),
        //         // clipper: TriangleClipper(),
        //         child: CachedNetworkImage(
        //           imageUrl: "http://via.placeholder.com/350x150",
        //           placeholder: (context, url) => CircularProgressIndicator(),
        //           errorWidget: (context, url, error) => Icon(Icons.error),
        //         ),
        //         // child: Image.asset(
        //         //   "assets/images/mohitvarma_self.jpg",
        //         //   fit: BoxFit.cover,
        //         // ),
        //       ),
        //     ),
        //   ),
        // ),
        // CustomPaint(
        //   painter: CustomArc(angle),
        //   // child: Container(
        //   //   height: 300,
        //   //   width: 300,
        //   // ),
        //   child: SizedBox(
        //     height: 400.0,
        //     width: 400.0,
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: ClipRRect(
        //         borderRadius: const BorderRadius.all(Radius.circular(300.0)),
        //         // clipper: TriangleClipper(),
        //         child: CachedNetworkImage(
        //           imageUrl: "http://via.placeholder.com/350x150",
        //           placeholder: (context, url) => CircularProgressIndicator(),
        //           errorWidget: (context, url, error) => Icon(Icons.error),
        //         ),
        //         // child: Image.asset(
        //         //   "assets/images/mohitvarma_self.jpg",
        //         //   fit: BoxFit.cover,
        //         // ),
        //       ),
        //     ),
        //   ),
        // )
        // SizedBox(
        //   height: 400.0,
        //   width: 400.0,
        //   child: ,
        // )
      ],
    );
  }
}

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        TextButton(onPressed: () {}, child: const Text("LinkedIn")),
        TextButton(onPressed: () {}, child: const Text("Github")),
        TextButton(onPressed: () {}, child: const Text("Instagram")),
        TextButton(onPressed: () {}, child: const Text("YouTube")),
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

