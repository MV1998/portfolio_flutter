import 'package:flutter/material.dart';

class Menus extends StatelessWidget {
  const Menus({super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> textButtonList = [
      Expanded(
        child: TextButton(
          onPressed: () {},
          onHover: (value) {
            print(value);
          },
          style:
          TextButton.styleFrom(backgroundColor: Colors.black),
          child:
          Text("Home", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
        ),
      ),
      Expanded(
        child: TextButton(
          onPressed: () {},
          onHover: (value) {
            print(value);
          },
          child: Text("Skills",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
        ),
      ),
      Expanded(
        child: TextButton(
          onPressed: () {},
          onHover: (value) {
            print(value);
          },
          child: Text("My Work",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
        ),
      ),
      Expanded(
        child: TextButton(
          onPressed: () {},
          onHover: (value) {
            print(value);
          },
          child: Text("Contact",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
        ),
      ),
      Expanded(
        child: ElevatedButton(
          onPressed: () {},
          onHover: (value) {
            print(value);
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          child: Text("Resume",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
        ),
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
