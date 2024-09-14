import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';

abstract class NewestBooksState {}

class NewestBooksInit extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}

class NewestBooksFailure extends NewestBooksState {
  final String errorMsg;

  NewestBooksFailure(this.errorMsg);
}
