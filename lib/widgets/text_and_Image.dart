import 'package:flutter/material.dart';

class TextAndImage extends StatelessWidget {
  final String text;
  final String imageUrl;

  const TextAndImage({
    super.key,
    required this.text,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight * 0.9;

    return Container(
      height: containerHeight,
      padding: const EdgeInsets.all(16.0),
      width: 800,
      child: Row(
        children: [
          Expanded(
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
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Image.network(
              imageUrl,
              height: containerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
