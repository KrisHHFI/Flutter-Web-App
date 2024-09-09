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
    return Container(
      color: Colors.cyan,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 16), // Add some spacing between text and image
          Image.network(
            imageUrl,
            width: 100, // Set image width as desired
            height: 100, // Set image height as desired
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
