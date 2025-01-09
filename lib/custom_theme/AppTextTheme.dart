import 'package:flutter/material.dart';

class AppTextTheme {
  static const TextStyle _headlineStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.amber,
  );

  static const TextStyle _subtitleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.amberAccent,
  );

  static const TextStyle _bodyStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  static const TextStyle _captionStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );

  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: _headlineStyle,
    displayMedium: _subtitleStyle.copyWith(color: Colors.deepOrange),
    bodyLarge: _bodyStyle,
    bodyMedium: _bodyStyle.copyWith(fontSize: 14),
    titleMedium: _bodyStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
    titleSmall: _captionStyle,
    labelLarge: _captionStyle.copyWith(fontSize: 14, color: Colors.blueGrey),
  );

  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: _headlineStyle.copyWith(color: Colors.white),
    displayMedium: _subtitleStyle.copyWith(color: Colors.orangeAccent),
    bodyLarge: _bodyStyle.copyWith(color: Colors.white70),
    bodyMedium: _bodyStyle.copyWith(fontSize: 14, color: Colors.white60),
    titleMedium: _bodyStyle.copyWith(
        fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
    titleSmall: _captionStyle.copyWith(color: Colors.grey[400]),
    labelLarge: _captionStyle.copyWith(fontSize: 14, color: Colors.white60),
  );
}
