import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color textColor;
  final Color bgColor;
  final double topLeftBorder;
  final double topRightBorder;
  final double bottomLeftBorder;
  final double bottomRightBorder;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textColor,
    required this.bgColor,
    this.topLeftBorder = 0,
    this.topRightBorder = 0,
    this.bottomLeftBorder = 0,
    this.bottomRightBorder = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: MaterialButton(
        color: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftBorder),
            bottomLeft: Radius.circular(bottomLeftBorder),
            topRight: Radius.circular(topRightBorder),
            bottomRight: Radius.circular(bottomRightBorder),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
