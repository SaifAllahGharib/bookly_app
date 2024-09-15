import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly_app/features/home/presentation/manager/cubits/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  static const String id = "/home_details_view";
  final BookModel bookModel;

  const BookDetailsView({
    super.key,
    required this.bookModel,
  });

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo!.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
