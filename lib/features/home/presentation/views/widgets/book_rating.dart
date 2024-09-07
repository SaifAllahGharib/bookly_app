import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;

  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: starColor,
          size: 14,
        ),
        SizedBox(width: 6.3),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(254)",
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
