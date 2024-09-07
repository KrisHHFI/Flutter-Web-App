import 'package:flutter/material.dart';

class SkyscrapersImage extends StatelessWidget {
  const SkyscrapersImage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size using MediaQuery
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width,
      height: screenSize.height, // Make the image fill the entire screen height
      child: Image.asset(
        'images/Skyscrapers.png',
        fit: BoxFit.cover, // Make the image cover the entire container
      ),
    );
  }
}
