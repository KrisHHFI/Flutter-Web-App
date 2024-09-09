// main.dart
import 'package:flutter/material.dart';
import 'widgets/page_container.dart';
import 'widgets/hero_banner.dart';
import 'widgets/single_text.dart';
import 'widgets/text_list.dart';
import 'widgets/text_and_Image.dart';
import 'widgets/custom_card.dart';

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
                child: HeroBanner(
                  text: 'Lorem Ipsum',
                  imageUrl:
                      'images/Skyscrapers.png', // Credit: Pexels, Charles Parker, Glowing skyscrapers of megalopolis on shore of river (edited)
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
                        'images/FinishedBuilding.jpg', // Credit: Pexels, RDNE Stock project
                  ),
                ),
              ),
              PageContainer(
                backgroundColor: Colors.black,
                unrestrictedHeight: true,
                child: SingleText(
                  text: 'Consectetur adipiscing elit?',
                  textColor: Colors.white,
                ),
              ),
              PageContainer(
                unrestrictedHeight: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                      imageUrl:
                          'images/Tools.jpg', // Credit: Pexels, Yavuz Eren Güngör, hardware
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    ),
                    CustomCard(
                      imageUrl:
                          'images/Cement.jpg', // Credit: Pexels, MILO TEXTURES, Concrete Wall
                      text:
                          'Duis aute irure dolor in reprehenderit in voluptate.',
                    ),
                    CustomCard(
                      imageUrl:
                          'images/Tape.jpg', // Credit: Pexels, Marta Longas, Close-Up Photo of Yellow Tape Measure
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    ),
                    CustomCard(
                      imageUrl:
                          'images/Paint.jpg', // Credit: Pexels, David Waschbüsch, Assorted-color Paint Buckets
                      text:
                          'Duis aute irure dolor in reprehenderit in voluptate.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
