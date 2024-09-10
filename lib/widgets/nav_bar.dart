import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final VoidCallback scrollToTop;
  final VoidCallback scrollToAbout;
  final VoidCallback scrollToServices;

  const NavBar({
    super.key,
    required this.scrollToTop,
    required this.scrollToAbout,
    required this.scrollToServices,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color.fromRGBO(0, 0, 0, 0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              'images/Logo.png', // Replace with your actual image path
              height: 30, // Set the desired height for the logo
              fit: BoxFit.contain,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width *
                          0.02), // 2vw padding
                  child: TextButton(
                    onPressed: scrollToTop, // Scroll to the top (Home)
                    child: const Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width *
                          0.02), // 2vw padding
                  child: TextButton(
                    onPressed: scrollToAbout, // Scroll to 200vh (About)
                    child: const Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width *
                          0.02), // 2vw padding
                  child: TextButton(
                    onPressed: scrollToServices, // Scroll to 400vh (Services)
                    child: const Text(
                      'Services',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
