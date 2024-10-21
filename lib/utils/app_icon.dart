import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon extends StatelessWidget {
  final String icon;
  final Color? color;
  final Size? size;
  const AppIcon(this.icon, {super.key, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: size?.width,
      height: size?.height,
      theme: SvgTheme(
        currentColor: color ??
            (Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black),
      ),
    );
  }
}
