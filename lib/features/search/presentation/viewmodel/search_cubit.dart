import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/home_repo/Home_Repo.dart';
import 'package:bookly/features/search/data/search_repo/search_repo.dart';
import 'package:meta/meta.dart';

import '../../../home/data/model/BookModel.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchBookState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;
  Future<void> getSearchBooks(String query) async
  {
    var result = await searchRepo.bookSearch(query);

    result.fold((failure) {
      emit(SearchBookFailure(failure.errorMessage));
    }, (books) {
      emit(SearchBookSuccess(books));
    });
  }
}
