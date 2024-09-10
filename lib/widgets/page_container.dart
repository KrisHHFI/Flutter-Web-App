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
    final screenHeight =
        unrestrictedHeight ? null : MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth <= 600;

        return Container(
          width: double.infinity,
          height: screenHeight,
          color: backgroundColor,
          child: cardContainer
              ? Padding(
                  padding: EdgeInsets.fromLTRB(
                    isSmallScreen
                        ? 16.0
                        : constraints.maxWidth *
                            0.2, // Adjust padding for small screens
                    30, // Top padding
                    isSmallScreen
                        ? 16.0
                        : constraints.maxWidth *
                            0.2, // Adjust padding for small screens
                    30, // Bottom padding
                  ),
                  child: Center(child: child),
                )
              : child,
        );
      },
    );
  }
}
