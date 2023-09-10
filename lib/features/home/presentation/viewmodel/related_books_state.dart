part of 'related_books_cubit.dart';

@immutable
abstract class RelatedBooksState {}

class RelatedBooksInitial extends RelatedBooksState {}

class RelatedBookInitial extends RelatedBooksState {}

class RelatedBookLoading extends RelatedBooksState{
}

class RelatedBookFailure extends RelatedBooksState{
  final String messageError;

   RelatedBookFailure(this.messageError);
}

class RelatedBookSuccess extends RelatedBooksState{
  final List<BookModel> books;
   RelatedBookSuccess(this.books);
}
