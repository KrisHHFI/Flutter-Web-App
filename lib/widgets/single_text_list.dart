import 'package:flutter/material.dart';

class SingleTextList extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color textColor; // Optional color for the text

  const SingleTextList({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    this.textColor = Colors.black, // Default text color is black
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final componentWidth = screenWidth * 0.5; // 50vw

    return SizedBox(
      width: componentWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: textColor, // Apply the text color
            ),
          ),
          const SizedBox(height: 16), // Add spacing between texts
          Text(
            text2,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: textColor, // Apply the text color
            ),
          ),
          const SizedBox(height: 16), // Add spacing between texts
          Text(
            text3,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: textColor, // Apply the text color
            ),
          ),
        ],
      ),
    );
  }
}
