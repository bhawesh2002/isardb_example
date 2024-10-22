import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon extends StatelessWidget {
  final String icon;
  final Color? color;
  final double? size;
  const AppIcon(this.icon, {super.key, this.color, this.size = 24});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: size,
      height: size,
      theme: SvgTheme(
        currentColor: color ??
            (Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black),
      ),
    );
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return icon;
  }
}
