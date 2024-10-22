import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  final Widget child;
  const AppPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.viewPaddingOf(context).top + 14,
        left: 16,
        right: 16,
      ),
      child: child,
    );
  }
}
