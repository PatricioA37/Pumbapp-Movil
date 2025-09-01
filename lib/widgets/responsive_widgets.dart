import 'package:flutter/material.dart';
import '../utils/responsive_helper.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (ResponsiveHelper.isDesktop(context)) {
          return desktop ?? mobile;
        }
        if (ResponsiveHelper.isTablet(context)) {
          return tablet ?? mobile;
        }
        return mobile;
      },
    );
  }
}

// Widget para contenedor responsivo
class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Alignment? alignment;
  final BoxDecoration? decoration;

  const ResponsiveContainer({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.alignment,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width != null ? ResponsiveHelper.adaptiveWidth(width!) : null,
      height: height != null ? ResponsiveHelper.adaptiveHeight(height!) : null,
      padding: padding,
      margin: margin,
      alignment: alignment,
      decoration: decoration,
      child: child,
    );
  }
}

// Widget para texto responsivo
class ResponsiveText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const ResponsiveText(
    this.text, {
    Key? key,
    required this.fontSize,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: (style ?? const TextStyle()).copyWith(
        fontSize: ResponsiveHelper.adaptiveFontSize(fontSize),
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
