import 'package:flutter/material.dart';

class ScreenConfig {
  static late num _widthScale;
  static late num _heightScale;
  static late num _textScaleFactor;

  static void init(
    BuildContext context, {
    double designWidth = 375,
    double designHeight = 812,
  }) {
    final mq = MediaQuery.of(context);
    _widthScale = mq.size.width / designWidth;
    _heightScale = mq.size.height / designHeight;
    _textScaleFactor = MediaQuery.of(context).textScaleFactor;
  }

  /// Get scaled height from design pixels
  static num h(num designHeightPx) => designHeightPx * _heightScale;

  /// Get scaled width from design pixels
  static num w(num designWidthPx) => designWidthPx * _widthScale;

  /// Get scaled font size

  static num sp(num designFontPx) =>
      designFontPx * _widthScale / _textScaleFactor;
}

extension SizeExtensions on num {
  double get h => ScreenConfig.h(this).toDouble();
  double get w => ScreenConfig.w(this).toDouble();
  double get sp => ScreenConfig.sp(this).toDouble();
}
