import 'package:flutter/material.dart';
import 'widgets/page_container.dart';
import 'widgets/hero_banner.dart';
import 'widgets/single_text.dart';
import 'widgets/text_list.dart';
import 'widgets/text_and_image.dart';
import 'widgets/custom_card.dart';
import 'widgets/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToPosition(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                PageContainer(
                  child: HeroBanner(
                    text: 'Lorem Ipsum',
                    imageUrl: 'images/Skyscrapers.png',
                  ),
                ),
                NavBar(
                  scrollToTop: () =>
                      _scrollToPosition(0), // Scroll to top (Home)
                  scrollTo200vh: () => _scrollToPosition(
                      MediaQuery.of(context).size.height *
                          3), // Scroll to 200vh (About)
                  scrollTo400vh: () => _scrollToPosition(
                      MediaQuery.of(context).size.height *
                          6.08), // Scroll to 600vh (Services)
                ),
              ],
            ),
            PageContainer(
              backgroundColor: Colors.black,
              child: Center(
                child: SingleText(
                  text:
                      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua?',
                  textColor: Colors.white,
                ),
              ),
            ),
            PageContainer(
              child: SingleTextList(
                text1: 'Ut enim ad minim',
                text2: 'Quis nostrud',
                text3: 'Ullamco laboris',
              ),
            ),
            PageContainer(
              backgroundColor: Colors.black,
              unrestrictedHeight: true,
              child: SingleText(
                text: 'Sed do eiusmod tempor?',
                textColor: Colors.white,
              ),
            ),
            PageContainer(
              child: Center(
                child: TextAndImage(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
                  imageUrl: 'images/BuildingSite.jpg',
                ),
              ),
            ),
            PageContainer(
              child: Center(
                child: TextAndImage(
                  imageOnLeft: true,
                  text:
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                  imageUrl: 'images/Scaffolding.jpg',
                ),
              ),
            ),
            PageContainer(
              child: Center(
                child: TextAndImage(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
                  imageUrl: 'images/FinishedBuilding.jpg',
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
              cardContainer: true,
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                alignment: WrapAlignment.start,
                children: [
                  CustomCard(
                    imageUrl: 'images/Tools.jpg',
                    text: 'Lorem ipsum dolor sit amet, consectetur.',
                  ),
                  CustomCard(
                    imageUrl: 'images/Cement.jpg',
                    text: 'Duis aute irure dolor in reprehenderit in.',
                  ),
                  CustomCard(
                    imageUrl: 'images/Tape.jpg',
                    text: 'Lorem ipsum dolor sit amet, consectetur.',
                  ),
                  CustomCard(
                    imageUrl: 'images/Paint.jpg',
                    text: 'Duis aute irure dolor in reprehenderit in.',
                  ),
                ],
              ),
            ),
            PageContainer(
              backgroundColor: Colors.black,
              child: SingleText(
                text: 'Excepteur sint occaecat...?',
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
