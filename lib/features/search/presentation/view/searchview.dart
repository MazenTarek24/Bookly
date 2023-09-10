  import 'package:bookly/features/home/data/model/BookModel.dart';
  import 'package:bookly/features/search/presentation/view/searchviewbody.dart';
  import 'package:bookly/features/search/presentation/viewmodel/search_cubit.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';

  class SearchView extends StatelessWidget {
    const SearchView({Key? key}) : super(key: key);


    @override
    Widget build(BuildContext context) {
      return const Scaffold(
        body: SafeArea(
            child: SearchViewBody()
        ),
      );
    }
  }
