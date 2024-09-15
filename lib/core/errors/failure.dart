import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMsg;

  Failure(this.errorMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMsg);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection time out with api");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Connection send out with api");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Connection receive out with api");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("No internet connection");
      case DioExceptionType.unknown:
        return ServerFailure("Unknown error");
      default:
        return ServerFailure("Opps there was an error, Please try again later");
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Not found, Please try again later");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error, Please try again later");
    } else {
      return ServerFailure("Opps there was an error, Please try again later");
    }
  }
}
