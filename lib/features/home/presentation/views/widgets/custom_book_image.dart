import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String assetName;

  const CustomBookImage({
    super.key,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(assetName),
          ),
        ),
      ),
    );
  }
}
