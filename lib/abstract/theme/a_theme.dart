import 'package:flutter/material.dart';

abstract class ATheme {
  ThemeData light = ThemeData(
    brightness: Brightness.light
  );

  ThemeData dark = ThemeData(
    brightness: Brightness.dark
  );

  ThemeData compactLight = ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.compact
  );

  ThemeData compactDark = ThemeData(
      visualDensity: VisualDensity.compact,
      brightness: Brightness.dark
  );

}
