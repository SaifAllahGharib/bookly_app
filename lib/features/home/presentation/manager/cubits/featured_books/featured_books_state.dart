import 'package:bookly_app/features/home/data/models/book_model/Book_model.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInit extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMsg;

  FeaturedBooksFailure(this.errorMsg);
}
