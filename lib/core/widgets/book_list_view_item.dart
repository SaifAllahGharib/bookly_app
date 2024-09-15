import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel bookModel;

  const BookListViewItem({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(
        BookDetailsView.id,
        extra: bookModel,
      ),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(bookModel: bookModel),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      (bookModel.volumeInfo?.title == null)
                          ? ""
                          : bookModel.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          Styles.textStyle20.copyWith(fontFamily: gtFontFamily),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    (bookModel.volumeInfo?.authors == null)
                        ? ""
                        : bookModel.volumeInfo!.authors![0],
                    style: Styles.textStyle14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(
                        rating: (bookModel.volumeInfo?.averageRating == null)
                            ? 0
                            : bookModel.volumeInfo!.averageRating!,
                        count: (bookModel.volumeInfo?.ratingsCount == null)
                            ? 0
                            : bookModel.volumeInfo!.ratingsCount!,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
