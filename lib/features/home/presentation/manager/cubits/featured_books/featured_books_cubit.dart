import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/cubits/featured_books/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final HomeRepo homeRepo;

  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInit());

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var res = await homeRepo.fetchFeaturedBooks();
    res.fold(
      (onFailure) => emit(FeaturedBooksFailure(onFailure.errorMsg)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
