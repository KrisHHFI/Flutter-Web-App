// main.dart
import 'package:flutter/material.dart';
import 'widgets/page_container.dart';
import 'widgets/hero_banner.dart';
import 'widgets/single_text.dart';
import 'widgets/text_list.dart';
import 'widgets/text_and_Image.dart';

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
                child: SingleTextList(
                  text1: 'Ut enim ad minim',
                  text2: 'Quis nostrud',
                  text3: 'Ullamco laboris',
                  textColor: Colors.white,
                ),
              ),
              PageContainer(
                child: Center(
                  child: TextAndImage(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
                    imageUrl:
                        'images/BuildingSite.jpg', // Credit: Pexels, Vinicius A. Nascimento, Construção Civil
                  ),
                ),
              ),
              PageContainer(
                child: Center(
                  child: TextAndImage(
                    imageOnLeft: true,
                    text:
                        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                    imageUrl:
                        'images/Scaffolding.jpg', // Credit: Pexels, Darya Sannikova, Men on Brown Scaffolding
                  ),
                ),
              ),
              PageContainer(
                child: Center(
                  child: TextAndImage(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
                    imageUrl:
                        'images/FinishedBuilding.jpg', // Credit: Pexels, Vinicius A. Nascimento, Construção Civil
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
