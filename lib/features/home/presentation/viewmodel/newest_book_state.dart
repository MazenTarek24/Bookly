part of 'newest_book_cubit.dart';

abstract class NewestBookState extends Equatable {
  const NewestBookState();
  @override
  List<Object> get props => [];
}

class NewestBookInitial extends NewestBookState {

}

class NewestBookLoading extends NewestBookState{}

class NewestBookFailure extends NewestBookState{
  final String messageError;

  const NewestBookFailure(this.messageError);
}

class NewestBookSuccess extends NewestBookState {
  final List<BookModel> books;

  const NewestBookSuccess(this.books);
}
