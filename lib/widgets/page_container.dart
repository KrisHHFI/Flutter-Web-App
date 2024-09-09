import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final bool unrestrictedHeight; // Optional unrestrictedHeight parameter

  const PageContainer({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.unrestrictedHeight = false, // Default value is false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: unrestrictedHeight
          ? null
          : MediaQuery.of(context).size.height, // Conditionally set height
      color: backgroundColor,
      child: child,
    );
  }
}
