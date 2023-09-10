import 'package:bookly/core/utils/CustomLoadingIndicator.dart';
import 'package:bookly/core/utils/ErrorTexr.dart';
import 'package:bookly/features/home/data/model/BookModel.dart';
import 'package:bookly/features/home/presentation/viewmodel/related_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CustomBookImage.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelatedBooksCubit, RelatedBooksState>(
      builder: (context, state) {
        if (state is RelatedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .13,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CustomBookImage(
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                            "",
                      ),
                    );
                  }),
            ),
          );
        } else if (state is RelatedBookFailure) {
          return CustomErrorText(textError: state.messageError);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
