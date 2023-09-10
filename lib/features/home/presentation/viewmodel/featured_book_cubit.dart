import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/home_repo/Home_Repo.dart';
import 'package:equatable/equatable.dart';

import '../../data/model/BookModel.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());

  HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async
  {
    emit(FeaturedBookLoading());

     var result = await homeRepo.fetchFeaturedBooks();
     result.fold((failure) {
       emit(FeaturedBookFailure(failure.errorMessage));
     }, (books) {
       emit(FeaturedBookSuccess(books));
     }
     );
  }
}
