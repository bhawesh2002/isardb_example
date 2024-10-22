import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar_example/utils/app_icons.dart';
import 'package:isar_example/utils/extensions.dart';
import 'package:isar_example/widgets/custom_bottom_app_bar.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  int currIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> strings = [
      context.locale.title,
      context.locale.search,
      context.locale.bookmark,
      context.locale.settings,
    ];
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(
        onTap: (index) {
          setState(() {
            currIndex = index;
          });
        },
        navItems: const [
          AppIcons.home,
          AppIcons.search,
          AppIcons.bookmark,
          AppIcons.settings,
        ],
      ),
      body: Center(
        child: Text(
          strings[currIndex],
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
