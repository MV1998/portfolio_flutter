

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CircularImageView extends StatelessWidget {
  double height;
  double width;
  CircularImageView({required this.height, required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(300.0)),
        // clipper: TriangleClipper(),
        child: Image.asset(
          "assets/images/mohitvarma_self.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
    // AnimatedBuilder(
    //   animation: animationController,
    // builder: (_, child) {
    //   return CustomPaint(
    //     painter: CustomArc(animationController.value),
    //     child: child,
    //   );
    // },
    //   child: SizedBox(
    //     height: 400.0,
    //     width: 400.0,
    //     child: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: ClipRRect(
    //         borderRadius: const BorderRadius.all(Radius.circular(300.0)),
    //         // clipper: TriangleClipper(),
    //         child: Image.asset(
    //           "assets/images/mohitvarma_self.jpg",
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //   ),),
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
  }
}
