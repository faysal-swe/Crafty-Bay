class AppExceptions implements Exception{
  final String? _message;
  final String? _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString(){
    return '$_prefix \n$_message';
  }
}


class InternetException extends AppExceptions{
  InternetException([String? message]) : super(message,'no internet');
}

class RequestTimeout extends AppExceptions{
  RequestTimeout([String? message]) : super(message,'Request Time out');
}

class ServerException extends AppExceptions{
  ServerException([String? message]) : super(message,'Internal server error');
}

class InvalidUrlException extends AppExceptions{
  InvalidUrlException([String? message]) : super(message,'Invalid url');
}

class FetchDataException extends AppExceptions{
  FetchDataException([String? message]) : super(message,'Error while communication');
}