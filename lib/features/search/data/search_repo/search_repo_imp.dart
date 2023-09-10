import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/model/BookModel.dart';
import 'package:bookly/features/search/data/search_repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp extends SearchRepo{
  SearchRepoImp(this.apiService);
  ApiService apiService;
  @override
  Future<Either<Failure, List<BookModel>>> bookSearch(query) async  {
    List<BookModel> books = [];
    try {
      var encodedQuery = Uri.encodeQueryComponent(query);
      var data = await apiService.get(
          "volumes?q=$encodedQuery&filter=free-ebooks");
      for (var items in data['items']) {
        var book = BookModel.fromJson(items);

        if(book.volumeInfo!.title?.toLowerCase().
                contains(query.toLowerCase()) != null) {
          books.add(book);
        }
      }
      return right(books);
    }catch(e){
      if(e is DioException)
        {
          return left(ServicesFailure.fromDioError(e));
        }
      return left(ServicesFailure(e.toString()));
    }

  }

}