import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  // Method to launch a URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => _launchURL(
                  'https://www.shutterstock.com/g/Kristopher+Pepper'), // Replace with your URL
              child:
                  Image.network('images/CameraIcon.png', width: 30, height: 30),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => _launchURL(
                  'https://github.com/KrisHHFI'), // Replace with your URL
              child: Image.network('images/GitHub.png', width: 30, height: 30),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => _launchURL(
                  'https://www.linkedin.com/in/kristopher-pepper-824184136/'), // Replace with your URL
              child:
                  Image.network('images/LinkedIn.png', width: 30, height: 30),
            ),
          ),
        ],
      ),
    );
  }
}
