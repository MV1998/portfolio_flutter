import 'package:flutter/material.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Mohit Varma",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Flutter",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            ListTile(
              title:
                  Text("Home", style: Theme.of(context).textTheme.bodyMedium),
            ),
            ListTile(
              title:
                  Text("Skills", style: Theme.of(context).textTheme.bodyMedium),
            ),
            ListTile(
              title: Text("My Work",
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
            ListTile(
              title: Text("Contact",
                  style: Theme.of(context).textTheme.bodyMedium),
            )
          ],
        ),
      ),
      body: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: Stack(
          children: [
            // Container(
            //   decoration: const BoxDecoration(
            //       image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: NetworkImage(
            //       "https://images.unsplash.com/photo-1478760329108-5c3ed9d495a0?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            //     ),
            //   )),
            // ),
            FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 1,
              child: ColoredBox(
                color: Colors.black.withOpacity(.7),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "HEY, I AM MOHIT 👋",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Hey There, I'm an Android Developer from Indore in India 🇮🇳. I love to create Android apps that would make life easy and enjoyable for people. I am currently working for Virim Infotech in Indore, Madhya Pradesh.",
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
