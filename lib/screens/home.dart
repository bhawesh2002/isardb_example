import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Home Page"),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}

Widget bottomNavigationBar() {
  //TODO: Complete the code for Bottom Navigation Bar
  return Container();
}
