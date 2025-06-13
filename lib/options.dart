import 'package:fpdart/fpdart.dart';

sealed class ProgramError {}

class SomeError1 extends ProgramError {
  String message;

  SomeError1(this.message);
}

class SomeError2 extends ProgramError {
  String message;

  SomeError2(this.message);
}

Option<String> getThirdLetterOption(String str) => str.length > 3 ? some(str[2]) : none();

Option<int> searchLetterInStringOption(String str, String letter) {
  final int index = str.indexOf(letter);
  return index != -1 ? some(index) : none();
}

int programOption(String source, String search) {
  return getThirdLetterOption(source)
      .flatMap((thirdLetter) => searchLetterInStringOption(search, thirdLetter))
      .getOrElse(() => throw Exception('Error'));
}

Option<int> programDo(String source, String search) {
  return Option.Do(
    (_) {
      String thirdLetter = _(getThirdLetterOption(source));
      return  _(searchLetterInStringOption(search, thirdLetter));
    },
  );
}

Either<ProgramError, String> getThirdLetterEither(String str) {
  return str.length > 3 ? right(str[2]) : left(SomeError1('Length is less than 3'));
}

Either<ProgramError, int> searchLetterInStringEither(String str, String letter) {
  final int index = str.indexOf(letter);
  return index != -1 ? right(index) : left(SomeError2('$letter not found in $str'));
}

Either<ProgramError, int> programEither(String source, String search) {
  return getThirdLetterEither(source).fold(
    (error) => left(error),
    (letter) => searchLetterInStringEither(search, letter).fold(
      (error) => left(error),
      (index) => right(index),
    ),
  );
}

void printEither(String source, String search) {
  print(programEither(source, search).fold(
    (error) => switch (error) {
      SomeError1() => error.message,
      SomeError2() => error.message,
    },
    (index) => index,
  ));
}

IO<void> printIO(String message) => IO(() => print(message));

void main() {
  try {
    print(programDo('Ame', 'Enterprise'));
  } catch (ex) {
    print(ex.toString());
  }

  printEither('Am', 'Enterprise');
  printIO('Print IO').run();
  program(Console());
}

class Console {
  void consolePrint(String message) => print(message);
}

void doSomethingElse(String str, Console console) {
  console.consolePrint(str);

  /// Return something
}

void doSomething(int n, Console console) {
  doSomethingElse('$n', console);

  /// Return something
}

void program(Console console) {
  doSomething(10, console);

  /// Return something
}

Reader<Console, void> doSomethingElseReader(String str) => Reader((console) => console.consolePrint(str));

Reader<Console, void> doSomethingReader(int n) => Reader((console) => doSomethingElse("$n", console));

Reader<Console, void> programReader() => Reader((console) => doSomething(10, console));
