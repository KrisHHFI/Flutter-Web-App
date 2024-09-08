// main.dart
import 'package:flutter/material.dart';
import 'widgets/page_container.dart';
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
        body: SingleChildScrollView(
          // Allow vertical scrolling
          child: Column(
            // Stack the containers vertically
            children: [
              PageContainer(
                child: Center(
                  child: SkyscrapersImage(),
                ),
              ),
              PageContainer(
                child: Center(), // Another empty page
              ),
            ],
          ),
        ),
      ),
    );
  }
}
