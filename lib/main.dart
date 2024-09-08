// main.dart
import 'package:flutter/material.dart';
import 'widgets/page_container.dart';
import 'widgets/hero_banner.dart';
import 'widgets/single_text.dart';

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
                  child: HeroBanner(),
                ),
              ),
              PageContainer(
                child: Center(
                  child: SingleText(
                    text:
                        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua?',
                  ),
                ),
              ),
              PageContainer(
                backgroundColor: Colors.black,
                child: Center(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
