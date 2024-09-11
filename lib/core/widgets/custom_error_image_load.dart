import 'package:flutter/material.dart';

class CustomErrorImageLoad extends StatelessWidget {
  const CustomErrorImageLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Icon(
        Icons.error,
        color: Colors.red,
        size: 50,
      ),
    );
  }
}
