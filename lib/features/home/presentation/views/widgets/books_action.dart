import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: "19.99\$",
              textColor: Colors.black,
              bgColor: Colors.white,
              topLeftBorder: buttonBorderRadios,
              bottomLeftBorder: buttonBorderRadios,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: "Free Preview",
              textColor: Colors.white,
              bgColor: const Color(0xffEF8262),
              topRightBorder: buttonBorderRadios,
              bottomRightBorder: buttonBorderRadios,
            ),
          ),
        ],
      ),
    );
  }
}
