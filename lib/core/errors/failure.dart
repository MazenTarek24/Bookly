import 'package:dio/dio.dart';

abstract class Failure{
  String errorMessage;
  Failure(this.errorMessage);
}

class ServicesFailure extends Failure{
  ServicesFailure(super.errorMessage);

  factory ServicesFailure.fromDioError(DioException dioError){
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServicesFailure("Connection Time Out With Api Server");
      case DioExceptionType.sendTimeout:
        return ServicesFailure("Send Time Out With Api Server");

      case DioExceptionType.receiveTimeout:
        return ServicesFailure("Receive Time Out With Api Server");

      case DioExceptionType.badCertificate:
        return ServicesFailure("Bad Certificate ");

      case DioExceptionType.badResponse:
        return ServicesFailure.FromBadResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServicesFailure("Request To Api Was Canceled");

      case DioExceptionType.connectionError:
        return ServicesFailure("There is NO Internet , SocketExceptions");

      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketExceptions")) {
          return ServicesFailure("There is NO Internet");
        } 
        return ServicesFailure("EUnExpected Error");
      default :
        return ServicesFailure("errorMessage");
    }
  }

    factory ServicesFailure.FromBadResponse(int statusCode , dynamic response)
    {
      if(statusCode == 400 || statusCode == 401 || statusCode == 403)
        {
          return ServicesFailure(response['error']['message']);
        }else if(statusCode == 404)
        {
          return ServicesFailure("Server Not Found");
        }else if(statusCode == 405) {
          return ServicesFailure("Internal Server Error , Please Try Later");
      }else{
         return ServicesFailure("Opps There Is An Error , Please Try Again");
      }
    }
  }
