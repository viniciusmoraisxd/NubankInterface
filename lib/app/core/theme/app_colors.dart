import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor primaryCustomColor =
      MaterialColor(0xFF820ad1, customColor);

  static Color primaryColor = Color(0xFF820ad1);
  static Color primaryColorVariant = Color(0xFF9c3adb);
  static Color cardBackgroundColor = Color(0xFFf0f1f5);

  static const Color black = Colors.black;
  static const Color black54 = Colors.black54;
  static const Color grey = Colors.grey;
  static Color grey200 = Colors.grey.shade200;
  static Color grey300 = Colors.grey.shade300;
  static Color grey500 = Colors.grey.shade500;
  static Color grey600 = Colors.grey.shade600;
  static Color grey700 = Colors.grey.shade700;
  static const Color white = Colors.white;
}

Map<int, Color> customColor = {
  50: Color.fromRGBO(130, 10, 209, 0.1),
  100: Color.fromRGBO(130, 10, 209, 0.2),
  200: Color.fromRGBO(130, 10, 209, 0.3),
  300: Color.fromRGBO(130, 10, 209, 0.4),
  400: Color.fromRGBO(130, 10, 209, 0.5),
  500: Color.fromRGBO(130, 10, 209, 0.6),
  600: Color.fromRGBO(130, 10, 209, 0.7),
  700: Color.fromRGBO(130, 10, 209, 0.8),
  800: Color.fromRGBO(130, 10, 209, 0.9),
  900: Color.fromRGBO(130, 10, 209, 1),
};
