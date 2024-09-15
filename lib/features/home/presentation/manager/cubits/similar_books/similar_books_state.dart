import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';

abstract class SimilarBooksState {}

class SimilarBooksInit extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  SimilarBooksSuccess(this.books);
}

class SimilarBooksFailure extends SimilarBooksState {
  final String errorMsg;

  SimilarBooksFailure(this.errorMsg);
}
