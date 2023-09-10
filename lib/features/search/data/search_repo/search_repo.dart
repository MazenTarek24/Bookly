import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
Future<Either<Failure , List<BookModel>>> bookSearch(String query);
}