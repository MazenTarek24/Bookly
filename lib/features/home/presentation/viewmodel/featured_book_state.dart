part of 'featured_book_cubit.dart';

abstract class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];

}

class FeaturedBookInitial extends FeaturedBookState {}

class FeaturedBookLoading extends FeaturedBookState{
}

class FeaturedBookFailure extends FeaturedBookState{
 final String messageError;

  const FeaturedBookFailure(this.messageError);
}

class FeaturedBookSuccess extends FeaturedBookState{
 final List<BookModel> books;
 const FeaturedBookSuccess(this.books);
}


