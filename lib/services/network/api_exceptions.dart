
// ignore_for_file: prefer_typing_uninitialized_variables

class CustomException implements Exception {
  final _message;
  final _prefix;

  CustomException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends CustomException {
  FetchDataException([String? message]) : super(message, "");
}

class BadRequestException extends CustomException {
  BadRequestException([message]) : super(message, "");
}

class ConflictException extends CustomException {
  ConflictException([message]) : super(message, "");
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([message]) : super(message, "");
}

class InvalidInputException extends CustomException {
  InvalidInputException([String? message]) : super(message, "Invalid Input: ");
}

class NotFoundException extends CustomException {
  NotFoundException([String? message]) : super(message, "");
}

class InternalServerException extends CustomException {
  InternalServerException([String? message]) : super(message, "");
}