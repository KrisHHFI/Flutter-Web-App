import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Blank App'),
        ),
        body: const Center(
          child: SubmarineImage(),
        ),
      ),
    );
  }
}

class SubmarineImage extends StatelessWidget {
  const SubmarineImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('images/SubmarineLightsOff.png'),
    );
  }
}
