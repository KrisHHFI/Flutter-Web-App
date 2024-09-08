import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final Widget child;
  final Color backgroundColor; // Add an optional background color parameter

  const PageContainer({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white, // Default background color is white
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: backgroundColor,
      child: child,
    );
  }
}
