import 'package:bookly/core/utils/CustomLoadingIndicator.dart';
import 'package:bookly/core/utils/ErrorTexr.dart';
import 'package:bookly/features/home/presentation/viewmodel/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BestSellerItem.dart';

class ListViewBook extends StatelessWidget {
  const ListViewBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if(state is NewestBookSuccess) {
          return ListView.builder(itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: BestSellerListViewItem(books: state.books[index],),
            );
          },
          itemCount: state.books.length,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          );
        }else if (state is NewestBookFailure){
          return CustomErrorText(textError: state.messageError);
        }else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
