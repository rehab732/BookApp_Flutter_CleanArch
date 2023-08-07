import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFaliuer extends Failure {
  ServerFaliuer(super.message);

  factory ServerFaliuer.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliuer('connectionTimeout');
      case DioExceptionType.sendTimeout:
        return ServerFaliuer('sendTimeout');

      case DioExceptionType.receiveTimeout:
        return ServerFaliuer('receiveTimeout');

      case DioExceptionType.badCertificate:
        return ServerFaliuer('badCertificate');

      case DioExceptionType.badResponse:
        return ServerFaliuer.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFaliuer('cancel');

      case DioExceptionType.connectionError:
        return ServerFaliuer('connectionError');

      case DioExceptionType.unknown:
        return ServerFaliuer('unknown');
    }
  }

  factory ServerFaliuer.fromResponse(int code, dynamic response) {
    if (code == 400) {
      return ServerFaliuer('Your request was not found');
    } else if (code == 500) {
      return ServerFaliuer('Ythere is problem with server');
    } else if (code == 400 || code == 401 || code == 403) {
      return ServerFaliuer(response['error']['message']);
    } else {
      return ServerFaliuer('7awel Tany');
    }
  }
}
