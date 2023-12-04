
import 'package:flutter/foundation.dart';

class AnimationProvider extends ChangeNotifier {
  double angle = 0.0;

  void updateAngle(double value) {
    angle = value;
    notifyListeners();
  }
}