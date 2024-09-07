import 'package:flutter/material.dart';

class SkyscrapersImage extends StatelessWidget {
  const SkyscrapersImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('images/Skyscrapers.png'),
    );
  }
}
