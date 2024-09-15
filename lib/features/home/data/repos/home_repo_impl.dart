import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api.dart';
import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final Api _api;

  HomeRepoImpl(this._api);

  Future<Either<Failure, List<BookModel>>> _fetchData(
      {required String url}) async {
    try {
      var data = await _api.get(endPoint: url);
      final List<BookModel> books = [];

      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    return _fetchData(
      url:
          "volumes?Filtering=free-ebooks&Sorting=newest&q=computer science&maxResults=40",
    );
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    return _fetchData(
      url: "volumes?Filtering=free-ebooks&q=subject:Programming&maxResults=20",
    );
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    return _fetchData(
      url:
          "volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:Programming&maxResults=20",
    );
  }
}
