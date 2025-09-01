import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveHelper {
  static double adaptiveWidth(double width) => width.w;
  static double adaptiveHeight(double height) => height.h;
  static double adaptiveFontSize(double size) => size.sp;
  static double adaptiveRadius(double radius) => radius.r;

  static EdgeInsets adaptivePadding({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return EdgeInsets.only(
      left: left.w,
      top: top.h,
      right: right.w,
      bottom: bottom.h,
    );
  }

  static EdgeInsets adaptiveSymmetricPadding({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return EdgeInsets.symmetric(
      horizontal: horizontal.w,
      vertical: vertical.h,
    );
  }

  static EdgeInsets adaptiveAllPadding(double padding) {
    return EdgeInsets.all(padding.r);
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;
}
