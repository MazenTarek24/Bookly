import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/home_repo/Home_Repo.dart';
import 'package:equatable/equatable.dart';

import '../../data/model/BookModel.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());

  HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
     var result = await homeRepo.fetchNewestBooks();

     result.fold((failure) {
       emit(NewestBookFailure(failure.errorMessage));
     }, (books) {
       emit(NewestBookSuccess(books));
  }
  );
  }
}
