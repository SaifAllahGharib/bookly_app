import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/cubits/newest_books/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo homeRepo;

  NewestBooksCubit(this.homeRepo) : super(NewestBooksInit());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var res = await homeRepo.fetchNewestBooks();
    res.fold(
      (onFailure) => emit(NewestBooksFailure(onFailure.errorMsg)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
