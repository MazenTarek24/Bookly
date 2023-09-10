  import 'package:bookly/core/utils/ErrorTexr.dart';
  import 'package:bookly/core/utils/text_styles.dart';
  import 'package:bookly/features/search/presentation/view/widget/CustomSearchTextView.dart';
  import 'package:bookly/features/search/presentation/view/widget/SearchListViewItem.dart';
import 'package:bookly/features/search/presentation/view/widget/search_list_view.dart';
  import 'package:bookly/features/search/presentation/viewmodel/search_cubit.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';


  class SearchViewBody extends StatelessWidget {
    const SearchViewBody({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children:  [
            CustomSearchTextField(),
            const Expanded(child: SearchListView())
          ],
        ),
      );
    }

  }


