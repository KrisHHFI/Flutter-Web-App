import 'package:flutter/material.dart';
import 'widgets/submarine_image.dart';
import 'widgets/skyscrapers_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SubmarineImage(),
              SkyscrapersImage(),
            ],
          ),
        ),
      ),
    );
  }
}
