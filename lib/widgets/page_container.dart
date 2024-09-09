import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final bool unrestrictedHeight;
  final bool cardContainer;

  const PageContainer({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.unrestrictedHeight = false,
    this.cardContainer = false,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: unrestrictedHeight ? null : MediaQuery.of(context).size.height,
      color: backgroundColor,
      child: cardContainer
          ? Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.2, // 20vw padding left
                30, // Top padding
                screenWidth * 0.2, // 20vw padding right
                30, // Bottom padding
              ),
              child: Center(child: child),
            )
          : child,
    );
  }
}
