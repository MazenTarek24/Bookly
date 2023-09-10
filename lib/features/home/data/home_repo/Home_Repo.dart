import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
  Future<Either< Failure ,List<BookModel>>> fetchNewestBooks();
  Future<Either< Failure ,List<BookModel>>>  fetchFeaturedBooks();

  Future<Either< Failure ,List<BookModel>>>  fetchRelatedBooks({required String category});


}