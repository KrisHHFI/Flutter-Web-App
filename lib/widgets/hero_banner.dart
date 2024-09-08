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
          height: screenSize.height,
          child: const Image(
            image: AssetImage('images/Skyscrapers.png'),
            fit: BoxFit.cover,
          ),
        ),
        // Positioned text
        Positioned(
          left: 50,
          top: screenSize.height / 2,
          child: const Text(
            'Lorem Ipsum',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
