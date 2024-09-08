import 'package:bookly_app/features/search/presentaion/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentaion/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(height: 20),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
