import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api.dart';
import 'package:bookly_app/features/home/data/models/book_model/Book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final Api api;
  final List<BookModel> _books = [];
  late final dynamic _data;

  HomeRepoImpl(this.api);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooks() async {
    try {
      _data = await api.get(
        endPoint:
            "volumes?q=subject:Programming&Sorting=newest&Filtering=free-ebooks",
      );

      for (var item in _data["items"]) {
        _books.add(BookModel.fromJson(item));
      }
      return right(_books);
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
}
