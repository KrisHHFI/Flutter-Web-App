import 'package:flutter/material.dart';

class TextAndImage extends StatelessWidget {
  final String text;
  final String imageUrl;
  final bool imageOnLeft; // Optional value to position the image on the left

  const TextAndImage({
    super.key,
    required this.text,
    required this.imageUrl,
    this.imageOnLeft = false, // Default value is false (image on the right)
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight * 0.9;

    // Build the image and text widgets
    final imageWidget = Expanded(
      flex: 1,
      child: Image.network(
        imageUrl,
        height: containerHeight,
        fit: BoxFit.cover,
      ),
    );

    final textWidget = Expanded(
      flex: 1,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );

    // Conditionally place image on the left or right
    return Container(
      height: containerHeight,
      padding: const EdgeInsets.all(16.0),
      width: 800,
      child: Row(
        children: imageOnLeft
            ? [imageWidget, const SizedBox(width: 16), textWidget]
            : [textWidget, const SizedBox(width: 16), imageWidget],
      ),
    );
  }
}
