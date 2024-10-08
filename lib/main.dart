import 'package:flutter/material.dart';
import 'widgets/page_container.dart';
import 'widgets/hero_banner.dart';
import 'widgets/single_text.dart';
import 'widgets/text_list.dart';
import 'widgets/text_and_image.dart';
import 'widgets/custom_card.dart';
import 'widgets/nav_bar.dart';
import 'widgets/footer.dart';

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

  // Define GlobalKeys for each PageContainer
  final GlobalKey _pageKey0 = GlobalKey();
  final GlobalKey _pageKey1 = GlobalKey();
  final GlobalKey _pageKey2 = GlobalKey();
  final GlobalKey _pageKey3 = GlobalKey();
  final GlobalKey _pageKey4 = GlobalKey();
  final GlobalKey _pageKey5 = GlobalKey();
  final GlobalKey _pageKey6 = GlobalKey();
  final GlobalKey _pageKey7 = GlobalKey();
  final GlobalKey _pageKey8 = GlobalKey();
  final GlobalKey _pageKey9 = GlobalKey();

  // Scroll to a specific PageContainer
  void _scrollToPage(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
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
                  key: _pageKey0,
                  child: HeroBanner(
                    text: 'Lorem Ipsum',
                    imageUrl:
                        'images/Skyscrapers.png', // Credit: Pexels, Charles Parker, Glowing skyscrapers of megalopolis on shore of river (edited)
                  ),
                ),
                NavBar(
                  scrollToTop: () => _scrollToPage(_pageKey0),
                  scrollToAbout: () => _scrollToPage(_pageKey3),
                  scrollToServices: () => _scrollToPage(_pageKey7),
                ),
              ],
            ),
            PageContainer(
              key: _pageKey1,
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
              key: _pageKey2,
              child: SingleTextList(
                text1: 'Ut enim ad minim',
                text2: 'Quis nostrud',
                text3: 'Ullamco laboris',
              ),
            ),
            PageContainer(
              key: _pageKey3,
              backgroundColor: Colors.black,
              unrestrictedHeight: true,
              child: SingleText(
                text: 'Sed do eiusmod tempor?',
                textColor: Colors.white,
              ),
            ),
            PageContainer(
              key: _pageKey4,
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
              key: _pageKey5,
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
              key: _pageKey6,
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
              key: _pageKey7,
              backgroundColor: Colors.black,
              unrestrictedHeight: true,
              child: SingleText(
                text: 'Consectetur adipiscing elit?',
                textColor: Colors.white,
              ),
            ),
            PageContainer(
              key: _pageKey8,
              unrestrictedHeight: true,
              cardContainer: true,
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                alignment: WrapAlignment.start,
                children: [
                  CustomCard(
                    imageUrl:
                        'images/Tools.jpg', // Credit: Pexels, Yavuz Eren Güngör, hardware
                    text: 'Lorem ipsum dolor sit amet, consectetur.',
                  ),
                  CustomCard(
                    imageUrl:
                        'images/Cement.jpg', // Credit: Pexels, MILO TEXTURES, Concrete Wall
                    text: 'Duis aute irure dolor in reprehenderit in.',
                  ),
                  CustomCard(
                    imageUrl:
                        'images/Tape.jpg', // Credit: Pexels, Marta Longas, Close-Up Photo of Yellow Tape Measure
                    text: 'Lorem ipsum dolor sit amet, consectetur.',
                  ),
                  CustomCard(
                    imageUrl:
                        'images/Paint.jpg', // Credit: Pexels, David Waschbüsch, Assorted-color Paint Buckets
                    text: 'Duis aute irure dolor in reprehenderit in.',
                  ),
                ],
              ),
            ),
            PageContainer(
              key: _pageKey9,
              backgroundColor: Colors.black,
              child: SingleText(
                text: 'Excepteur sint occaecat...?',
                textColor: Colors.white,
              ),
            ),
            PageContainer(
              unrestrictedHeight: true,
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
