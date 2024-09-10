import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final VoidCallback scrollToTop;
  final VoidCallback scrollTo200vh;
  final VoidCallback scrollTo400vh;

  const NavBar({
    super.key,
    required this.scrollToTop,
    required this.scrollTo200vh,
    required this.scrollTo400vh,
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
            const Text(
              'Logo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
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
                    onPressed: scrollTo200vh, // Scroll to 200vh (About)
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
                    onPressed: scrollTo400vh, // Scroll to 400vh (Services)
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
