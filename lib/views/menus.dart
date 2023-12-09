import 'package:flutter/material.dart';

class Menus extends StatelessWidget {
  const Menus({super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> textButtonList = [
      TextButton(
        onPressed: () {},
        onHover: (value) {
          print(value);
        },
        style:
        TextButton.styleFrom(backgroundColor: Colors.black),
        child:
        Text("Home", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
      ),
      const SizedBox(
        width: 20.0,
      ),
      TextButton(
        onPressed: () {},
        onHover: (value) {
          print(value);
        },
        child: Text("Tech Stack",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
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
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
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
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
      ),
      const SizedBox(
        width: 20.0,
      ),
      ElevatedButton(
        onPressed: () {},
        onHover: (value) {
          print(value);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        child: Text("Resume",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
      ),
    ];

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: textButtonList,
      ),
    );
  }
}
