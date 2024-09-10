import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network('images/CameraIcon.png', width: 30, height: 30),
          const SizedBox(width: 20),
          Image.network('images/GitHub.png', width: 30, height: 30),
          const SizedBox(width: 20),
          Image.network('images/LinkedIn.png', width: 30, height: 30),
        ],
      ),
    );
  }
}
