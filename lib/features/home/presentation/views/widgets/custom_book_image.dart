import 'package:bookly_app/core/widgets/custom_error_image_load.dart';
import 'package:bookly_app/core/widgets/progress.dart';
import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final BookModel bookModel;

  const CustomBookImage({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: (bookModel.volumeInfo?.imageLinks?.thumbnail == null)
              ? ""
              : bookModel.volumeInfo!.imageLinks!.thumbnail!,
          placeholder: (context, url) => const Progress(),
          errorWidget: (context, url, error) => const CustomErrorImageLoad(),
        ),
      ),
    );
  }
}
