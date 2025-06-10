import 'dart:math';

part 'models.dart';

class Service {
  Service._internal();

  static final Service _instance = Service._internal();

  static Service get instance => _instance;

  Random random = Random();

  String getResult() {
    final number = random.nextInt(100);
    final result = _getModel(number);

    return switch (result) {
      _Initial() => 'Initial',
      _Loading(:String state) => 'Loading: $state',
      _Failure(:int errorCode) => 'Failure with error code: $errorCode',
      _Success(:int code, :String message) => 'Success!!! Code: $code, Message: $message',
    };
  }

  _Model _getModel(int number) => switch (number) {
        < 25 => _Initial(),
        >= 25 && < 50 => _Loading(state: 'loading'),
        >= 50 && < 75 => _Success(code: random.nextInt(10) + 1, message: 'Success'),
        >= 75 => _Failure(errorCode: random.nextInt(100) + 400),
        (_) => _Initial(),
      };
}
