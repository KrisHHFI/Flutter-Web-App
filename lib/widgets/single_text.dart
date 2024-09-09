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
    return SizedBox(
      width: 500,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: textColor, // Apply the text color
          ),
        ),
      ),
    );
  }
}
