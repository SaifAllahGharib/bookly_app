import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    Assets.imageListItem,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
        const Column(
          children: [
            SizedBox(
              width: 230,
              child: Text(
                "Hary Potter\nand the Goblet Of Fire",
                style: Styles.textStyle20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
