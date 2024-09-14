import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;

  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: starColor,
          size: 14,
        ),
        const SizedBox(width: 6.3),
        Text(
          "$rating",
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Text(
            "($count)",
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
