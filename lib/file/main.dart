import 'dart:io';

void main() {
  RegExp exp = RegExp(r"\w+(\'\w+)?");
  File file = File('example.txt');
  String content = file.readAsStringSync();
  print(content.split(' ').length);
  print(exp.allMatches(content).length);
}
