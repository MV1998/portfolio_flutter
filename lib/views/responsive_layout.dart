import 'package:flutter/material.dart';
class ResponsiveLayout extends StatelessWidget {
  final Widget desktopView;
  final Widget mobileView;
  final Widget tabletView;
  const ResponsiveLayout(
      {required this.mobileView,
      required this.tabletView,
      required this.desktopView,
      super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth < 700) {
          return mobileView;
        }else if (constraints.maxWidth < 1000) {
          return tabletView;
        }
        return desktopView;
      },
    );
  }
}
