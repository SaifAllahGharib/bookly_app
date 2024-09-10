import 'package:bookly_app/features/home/data/models/book_model/Book_model.dart';
import 'package:bookly_app/features/home/data/models/failure_model/Failure_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<FailureModel> failure() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookModel>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookModel>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
