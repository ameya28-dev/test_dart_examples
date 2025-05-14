void main() {
  try {
    throwException();
  } catch (ex) {
    print(ex);
  }
}

void throwException() {
  try {
    throw Exception('Some random exception');
  } on Exception catch (e) {
    throw e;
  }
}
