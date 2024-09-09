import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  final String text;
  final String imageUrl;

  const HeroBanner({
    super.key,
    required this.text,
    required this.imageUrl,
  });

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
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        // Positioned text
        Positioned(
          left: 100,
          top: screenSize.height / 2,
          child: Text(
            text,
            style: const TextStyle(
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
