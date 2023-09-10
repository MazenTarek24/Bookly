import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/home_repo/Home_Repo.dart';
import '../../data/model/BookModel.dart';

part 'related_books_state.dart';

class RelatedBooksCubit extends Cubit<RelatedBooksState> {
  RelatedBooksCubit(this.homeRepo) : super(RelatedBooksInitial());

   HomeRepo homeRepo;

  Future<void> fetchRelatedBooks(String category) async {
    var result = await homeRepo.fetchRelatedBooks(category: category);

    result.fold((failure) {
      emit(RelatedBookFailure(failure.errorMessage));
    }, (books) {
      emit(RelatedBookSuccess(books));
    }
    );
  }
}
