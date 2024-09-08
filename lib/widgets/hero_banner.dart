import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size using MediaQuery
    final screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        // Background image
        SizedBox(
          width: screenSize.width,
          height:
              screenSize.height, // Make the image fill the entire screen height
          child: const Image(
            image: AssetImage('images/Skyscrapers.png'),
            fit: BoxFit.cover, // Make the image cover the entire container
          ),
        ),
        // Positioned text
        Positioned(
          left: 50, // Padding from the left
          top: screenSize.height / 2, // Halfway down the screen
          child: const Text(
            'Lorem Ipsum',
            style: TextStyle(
              color: Colors.white, // White text color
              fontSize: 80, // Large text
              fontWeight: FontWeight.bold, // Bold text
            ),
          ),
        ),
      ],
    );
  }
}
