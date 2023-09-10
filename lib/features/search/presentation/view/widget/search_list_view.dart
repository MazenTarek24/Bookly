import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/ErrorTexr.dart';
import '../../../../../core/utils/text_styles.dart';
import '../../viewmodel/search_cubit.dart';
import 'SearchListViewItem.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchBookState>(
      builder: (context, state)
      {
        print("SearchListView builder called");
        if (state is SearchBookSuccess) {
          if(state.books.isNotEmpty && state.books != null) {
            return ListView.builder(
              shrinkWrap: false,
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SearchListViewItem(
                    books: state.books[index],
                  ),
                );
              },
            );
          }else{
            return const Center(child: Text("No results found"));
          }
        } else if(state is SearchBookFailure){
          return CustomErrorText(textError: state.messageError);
        }else{
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("search for books" ,
              style: Styles.textStyle26,
            ),
          );
        }
      },
    );
  }
}
