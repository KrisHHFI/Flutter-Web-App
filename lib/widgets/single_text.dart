import 'package:flutter/material.dart';

class SingleText extends StatelessWidget {
  final String text;

  const SingleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
