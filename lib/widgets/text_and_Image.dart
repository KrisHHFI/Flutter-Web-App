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
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth <= 600;
        final containerHeight = isSmallScreen
            ? constraints.maxHeight
            : MediaQuery.of(context).size.height * 0.9;

        // Build the image and text widgets
        final imageWidget = Expanded(
          flex: 1,
          child: Image.network(
            imageUrl,
            height: isSmallScreen ? double.infinity : containerHeight,
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
          width: isSmallScreen ? double.infinity : 800,
          child: isSmallScreen
              ? Column(
                  children: [
                    imageWidget,
                    const SizedBox(height: 16),
                    textWidget,
                  ],
                )
              : Row(
                  children: imageOnLeft
                      ? [imageWidget, const SizedBox(width: 16), textWidget]
                      : [textWidget, const SizedBox(width: 16), imageWidget],
                ),
        );
      },
    );
  }
}
