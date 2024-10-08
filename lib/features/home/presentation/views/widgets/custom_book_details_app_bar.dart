import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
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
      ),
    );
  }
}
