import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("Tech Stack", style: Theme.of(context).textTheme.bodyMedium,),
        const SizedBox(height: 10.0,),
        ColoredBox(
          color: Colors.blueGrey.shade900,
          child: SizedBox(
            width: 85.w,
            height: 10.h,
            child: Row(
              children: [
                ElevatedButton(onPressed: () async {
                  await launchUrl(Uri.parse("https://www.linkedin.com/in/mohit-varma-199257146/"));
                },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    backgroundColor: Colors.blue.shade600,
                  ), child: const Icon(FontAwesomeIcons.android, color: Colors.white,),),


                ElevatedButton(onPressed: () async {
                  await launchUrl(Uri.parse("https://www.linkedin.com/in/mohit-varma-199257146/"));
                },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    backgroundColor: Colors.blue.shade600,
                  ), child: const Icon(FontAwesomeIcons.java, color: Colors.white,),),


                ElevatedButton(onPressed: () async {
                  await launchUrl(Uri.parse("https://www.linkedin.com/in/mohit-varma-199257146/"));
                },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    backgroundColor: Colors.blue.shade600,
                  ), child: const Icon(FontAwesomeIcons.git, color: Colors.white,),),


                ElevatedButton(onPressed: () async {
                  await launchUrl(Uri.parse("https://www.linkedin.com/in/mohit-varma-199257146/"));
                },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    backgroundColor: Colors.blue.shade600,
                  ), child: const Icon(FontAwesomeIcons.github, color: Colors.white,),),
              ],
            ),
          ),
        )
      ],
    );
  }
}
