import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mohit_portfolio/view_models/animation_provider.dart';
import 'package:mohit_portfolio/views/main_view/tablet_view.dart';
import 'package:mohit_portfolio/views/responsive_layout.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'views/main_view/desktop_view.dart';
import 'views/main_view/mobile_view.dart';

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
    return ResponsiveLayout(
        mobileView: MobileView(),
        tabletView: TabletView(),
        desktopView: ChangeNotifierProvider<AnimationProvider>(
          create: (_) {
            return AnimationProvider();
          },
          child: DesktopView(),
        ),
    );
    return LayoutBuilder(
      builder: (_, constraints) {
        print(constraints.maxWidth);
        if (constraints.maxWidth <= 900) {
          return const MobileView();
        } else {
          return ChangeNotifierProvider<AnimationProvider>(
            create: (_) {
              return AnimationProvider();
            },
            child: DesktopView(),
          );
          // return const DesktopView();
        }
      },
    );
  }
}
