import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mohit_portfolio/view_models/animation_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'views/desktop_view.dart';
import 'views/mobile_view.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (_, orientation, deviceType) {
        return MaterialApp(
          title: 'Mohit Varma',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              // fontFamily: GoogleFonts.titilliumWeb().fontFamily,
              // textTheme: const TextTheme(
              //   bodyLarge: TextStyle(color: Colors.white),
              //   bodyMedium: TextStyle(color: Colors.white)
              // )
              textTheme: GoogleFonts.poppinsTextTheme(const TextTheme(
                  bodyLarge: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                  bodyMedium: TextStyle(color: Colors.white)))),
          home: const MyHomePage(title: 'Mohit Varma'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth <= 600) {
          return const MobileView();
        } else {
          return ChangeNotifierProvider<AnimationProvider>(
            create: (_) {
              return AnimationProvider();
            },
            child: const DesktopView(),
          );
          // return const DesktopView();
        }
      },
    );
  }
}
