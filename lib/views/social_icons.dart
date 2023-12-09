import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    double padding = 18.0;
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        ElevatedButton(onPressed: () async {
          await launchUrl(Uri.parse("https://www.linkedin.com/in/mohit-varma-199257146/"));
        },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: EdgeInsets.all(padding),
            backgroundColor: Colors.blue.shade600,
          ), child: const Icon(FontAwesomeIcons.linkedin, color: Colors.white,),),
        ElevatedButton(onPressed: () async {
          await launchUrl(Uri.parse("https://github.com/MV1998"));
        },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: EdgeInsets.all(padding),
              backgroundColor: Colors.blueGrey.shade600
          ), child: const Icon(FontAwesomeIcons.github, color: Colors.white,),),
        ElevatedButton(onPressed: () async {
          await launchUrl(Uri.parse("https://twitter.com/mv501049"));
        },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: EdgeInsets.all(padding),
              backgroundColor: Colors.black
          ), child: const Icon(FontAwesomeIcons.x, color: Colors.white,),),
        ElevatedButton(onPressed: () async {
          await launchUrl(Uri.parse("https://www.instagram.com/mohitvarma__"));
        },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: EdgeInsets.all(padding),
              backgroundColor: Colors.purpleAccent
          ), child: const Icon(FontAwesomeIcons.instagram, color: Colors.white,),),
      ],
    );
  }
}