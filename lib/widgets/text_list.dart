import 'package:flutter/material.dart';

class SingleTextList extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color textColor;

  const SingleTextList({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth <= 600;
        final numberFontSize = isSmallScreen ? 35.0 : 50.0;
        final textFontSize = isSmallScreen ? 35.0 : 40.0;
        final padding =
            isSmallScreen ? EdgeInsets.only(left: 16.0) : EdgeInsets.zero;

        return Center(
          child: Padding(
            padding: padding,
            child: SizedBox(
              width: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '1. ',
                          style: TextStyle(
                            fontSize: numberFontSize,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        TextSpan(
                          text: text1,
                          style: TextStyle(
                            fontSize: textFontSize,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '2. ',
                          style: TextStyle(
                            fontSize: numberFontSize,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        TextSpan(
                          text: text2,
                          style: TextStyle(
                            fontSize: textFontSize,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '3. ',
                          style: TextStyle(
                            fontSize: numberFontSize,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        TextSpan(
                          text: text3,
                          style: TextStyle(
                            fontSize: textFontSize,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
