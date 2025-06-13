import 'service.dart';

void main() {
  for (int i = 0; i < 10; i++) {
    print(Service.instance.getResult());
  }
}
