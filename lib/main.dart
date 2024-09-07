// main.dart
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
    return const MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Center(
              child: SkyscrapersImage(),
            ),
            SubmarineImage(),
          ],
        ),
      ),
    );
  }
}
