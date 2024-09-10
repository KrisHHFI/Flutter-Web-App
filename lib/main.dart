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
                    imageUrl: 'images/Skyscrapers.png',
                  ),
                ),
                NavBar(
                  scrollToTop: () => _scrollToPage(_pageKey0),
                  scrollToAbout: () => _scrollToPage(_pageKey3),
                  scrollToServices: () => _scrollToPage(_pageKey6),
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
                  imageUrl: 'images/BuildingSite.jpg',
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
                  imageUrl: 'images/Scaffolding.jpg',
                ),
              ),
            ),
            PageContainer(
              key: _pageKey6,
              backgroundColor: Colors.black,
              unrestrictedHeight: true,
              child: SingleText(
                text: 'Consectetur adipiscing elit?',
                textColor: Colors.white,
              ),
            ),
            PageContainer(
              key: _pageKey7,
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
              key: _pageKey8,
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
