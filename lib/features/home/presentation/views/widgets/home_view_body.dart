import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25, top: 25, right: 10, bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BooksListView(),
          SizedBox(height: 50),
          Text(
            "Best Seller",
            style: Styles.titleMedium,
          ),
        ],
      ),
    );
  }
}
