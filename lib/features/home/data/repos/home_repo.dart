import 'package:bookly_app/features/home/data/models/book_model/Book_model.dart';
import 'package:bookly_app/features/home/data/models/failure_model/Failure_model.dart';

abstract class HomeRepo {
  Future<List<BookModel>> fetchBestSellerBooks();

  Future<List<BookModel>> fetchFeaturedBooks();

  Future<FailureModel> failure();
}
