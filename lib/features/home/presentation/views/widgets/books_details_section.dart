import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  final BookModel bookModel;

  const BooksDetailsSection({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * .19,
            left: MediaQuery.of(context).size.width * .19,
            top: 20,
          ),
          child: CustomBookImage(bookModel: bookModel),
        ),
        const SizedBox(height: 43),
        Text(
          (bookModel.volumeInfo?.title == null)
              ? ""
              : bookModel.volumeInfo!.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            (bookModel.volumeInfo?.authors == null)
                ? ""
                : bookModel.volumeInfo!.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 18),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: (bookModel.volumeInfo?.averageRating == null)
              ? 0
              : bookModel.volumeInfo!.averageRating!,
          count: (bookModel.volumeInfo?.ratingsCount == null)
              ? 0
              : bookModel.volumeInfo!.ratingsCount!,
        ),
        const SizedBox(height: 37),
        BooksAction(bookModel: bookModel),
      ],
    );
  }
}
