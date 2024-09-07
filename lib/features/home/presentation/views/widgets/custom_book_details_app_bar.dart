import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            // Code on press on icon
          },
          icon: const Icon(
            Icons.close,
            size: 22,
          ),
        ),
        IconButton(
          onPressed: () {
            // Code on press on icon
          },
          icon: const Icon(
            Icons.shopping_cart_outlined,
            size: 22,
          ),
        ),
      ],
    );
  }
}
