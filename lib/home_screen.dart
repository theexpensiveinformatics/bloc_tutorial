import 'package:bloc_tutorial/home_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreenTwo(),
              )),
          child: const Text('go to other screen')),
    ));
  }
}
