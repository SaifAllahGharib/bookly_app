import 'package:bookly_app/core/widgets/book_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/progress.dart';
import 'package:bookly_app/features/home/presentation/manager/cubits/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/cubits/newest_books/newest_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return SliverFillRemaining(
            child: CustomErrorWidget(errorMsg: state.errorMsg),
          );
        } else {
          return const SliverFillRemaining(
            child: Progress(),
          );
        }
      },
    );
  }
}
