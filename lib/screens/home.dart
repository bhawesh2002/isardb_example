import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar_example/theme/theme_provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return Scaffold(
      body: const Center(
        child: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(themeProvider.notifier).changeTheme(
              Theme.of(context).brightness == Brightness.dark
                  ? ThemeMode.light
                  : ThemeMode.dark);
        },
        child: Icon(
            themeMode == ThemeMode.dark ? Icons.toggle_off : Icons.toggle_on),
      ),
    );
  }
}

Widget bottomNavigationBar() {
  //TODO: Complete the code for Bottom Navigation Bar
  return Container();
}
