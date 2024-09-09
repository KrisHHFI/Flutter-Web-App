import 'package:flutter/material.dart';

class SingleText extends StatelessWidget {
  final String text;
  final Color textColor; // Optional color for the text

  const SingleText({
    super.key,
    required this.text,
    this.textColor = Colors.black, // Default text color is black
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width <= 600;

    return SizedBox(
      width:
          isSmallScreen ? double.infinity : 500, // Full width on small screens
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal:
              isSmallScreen ? 10 : 0.0, // 5 units padding on small screens
        ),
        child: Center(
          child: Text(
            text,
            textAlign: isSmallScreen
                ? TextAlign.center
                : TextAlign.left, // Center text if small screen
            style: TextStyle(
              fontSize: 40, // Font size remains 40 for both screen sizes
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: textColor, // Apply the text color
            ),
          ),
        ),
      ),
    );
  }
}
