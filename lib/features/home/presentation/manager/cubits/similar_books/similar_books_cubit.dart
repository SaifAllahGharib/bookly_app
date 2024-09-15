import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/cubits/similar_books/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo homeRepo;

  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInit());

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var res = await homeRepo.fetchSimilarBooks(category: category);

    res.fold(
      (onFailure) => emit(SimilarBooksFailure(onFailure.errorMsg)),
      (books) => emit(SimilarBooksSuccess(books)),
    );
  }
}
