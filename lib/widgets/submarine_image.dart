// submarine_image.dart
import 'package:flutter/material.dart';

class SubmarineImage extends StatelessWidget {
  const SubmarineImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // You can position the SubmarineImage here using Positioned
        Positioned(
          bottom: 50,
          left: 0,
          right: 0,
          child: Image.asset('images/SubmarineLightsOff.png'),
        ),
      ],
    );
  }
}
