import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/home_repo/Home_Repo.dart';
import 'package:bookly/features/home/data/model/BookModel.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


class HomeRepoImp extends HomeRepo{
  ApiService apiService;
  HomeRepoImp(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {

   try {
     var data = await apiService.get('volumes?Filtering=free-ebooks&Sorting=newest&q=Computer Science');
     List<BookModel> books = [];
     for(var item in data['items']){
       books.add(BookModel.fromJson(item));
     }
     return right(books);
   } on Exception catch (e) {
     if(e is DioException) {
       return  left(ServicesFailure.fromDioError(e));
     }
     return left(ServicesFailure(e.toString()));
   }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
     try {
       List<BookModel> books = [];
       var data = await apiService.get("volumes?Filtering=free-ebooks&q= programming");
       for(var items in data['items']){
         books.add(BookModel.fromJson(items));
       }
       return right(books);
     } on Exception catch (e) {
       if(e is DioException){
         return left(ServicesFailure.fromDioError(e));
       }
       return left(ServicesFailure(e.toString()));
     }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchRelatedBooks({required String category}) async {
    try {
      List<BookModel> books = [];
      var data = await apiService.get("volumes?Filtering=free-ebooks&Sorting=relevance &q=computer%20science");
      for(var items in data['items']){
        books.add(BookModel.fromJson(items));
      }
      return right(books);
    } on Exception catch (e) {
      if(e is DioException){
        return left(ServicesFailure.fromDioError(e));
      }
      return left(ServicesFailure(e.toString()));
    }
  }


}