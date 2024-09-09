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
    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width <= 600;

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
        // Text position and styling
        isSmallScreen
            ? Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    text,
                    textAlign:
                        TextAlign.center, // Center the text for small screens
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50, // Smaller font size for small screens
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            : Positioned(
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
