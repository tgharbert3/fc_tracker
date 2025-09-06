import 'package:flutter/material.dart';

class AppColors {
  static const walmartBlue = Color(0xFF0071CE);
  static const walmartYellow = Color(0xFFFFC220);

  static final scheme = ColorScheme.fromSeed(
    seedColor: walmartBlue,
    brightness: Brightness.light,
  );

  static final customScheme = scheme.copyWith(secondary: walmartYellow);
}
