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
    return Container(
      width: cardContainer
          ? MediaQuery.of(context).size.width * 0.6 // 60vw width
          : double.infinity,
      height: unrestrictedHeight ? null : MediaQuery.of(context).size.height,
      color: backgroundColor,
      child: cardContainer ? Center(child: child) : child,
    );
  }
}
