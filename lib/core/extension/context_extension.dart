import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get value1 => height * 0.01;
  double get value2 => height * 0.02;
  double get value3 => height * 0.03;
  double get value4 => height * 0.04;
  double get value5 => height * 0.05;
  double get value10 => height * 0.1;
}
