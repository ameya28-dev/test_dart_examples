part of 'service.dart';

sealed class _Model {}

class _Initial extends _Model {}

class _Loading extends _Model {
  final String state;

  _Loading({required this.state});
}

class _Failure extends _Model {
  final int errorCode;

  _Failure({required this.errorCode});
}

class _Success extends _Model {
  final int code;
  final String message;

  _Success({required this.code, required this.message});
}
