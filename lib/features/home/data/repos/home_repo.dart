import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/Book_model.dart';

abstract class HomeRepo {
  Future<List<BookModel>> fetchBestSellerBooks();

  Future<Failure> fetchBestSellerBooksFailure();

  Future<List<BookModel>> fetchFeaturedBooks();

  Future<Failure> fetchFeaturedBooksFailure();
}
