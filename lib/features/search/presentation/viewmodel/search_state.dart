part of 'search_cubit.dart';

@immutable
abstract class SearchBookState {}

class SearchInitial extends SearchBookState {}

class FeaturedBookInitial extends SearchBookState {}

class SearchBookLoading extends SearchBookState{
}

class SearchBookFailure extends SearchBookState{
  final String messageError;

   SearchBookFailure(this.messageError);
}

class SearchBookSuccess extends SearchBookState{
  final List<BookModel> books;
   SearchBookSuccess(this.books);
}
