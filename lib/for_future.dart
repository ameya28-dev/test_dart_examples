import 'dart:isolate';
import 'dart:math';

List<int> delays = <int>[];
List<int> multipliers = <int>[];

Future<int> get(int input) async {
  Random random = Random();
  int delay = random.nextInt(5);
  int multiplier = random.nextInt(5);
  delays.add(delay);
  multipliers.add(multiplier);
  return Future.delayed(Duration(seconds: delay), () => input * multiplier);
}

class Data {
  final List<int> input;
  final SendPort sendPort;

  Data({required this.input, required this.sendPort});
}

Future<List<int>> processList(List<int> input) async {
  return Future.wait<int>(input.map((i) => get(i)));
}

Future<void> processListIsolate(Data data) async {
  List<int> res = await Future.wait<int>(data.input.map((i) => get(i)));
  Random random = Random();
  if (random.nextInt(100) > 50) data.sendPort.send(Exception('Isolate unexpectedly failed'));
  print('Delays inside isolates: $delays');
  print('Multipliers inside isolates: $multipliers');
  data.sendPort.send(res);
}

Future<void> main() async {
  Stopwatch stopwatch = Stopwatch();
  // stopwatch.start();
  List<int> list = [1, 2, 4, 5, 6, 7];

  var res = await Isolate.run(() => processList(list));
  print(res);

  // List<int> output = await processList(list);
  // stopwatch.stop();
  // print('Total future time: ${stopwatch.elapsed}');
  // print('Total delay added: $delays');
  // print('Multipliers: $multipliers');
  // print(output);

  // delays.clear();
  // multipliers.clear();
  // stopwatch.reset();
  stopwatch.start();
  final ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(processListIsolate, Data(input: list, sendPort: receivePort.sendPort));
  print('Isolate done');
  receivePort.listen(
    (res) => switch (res) {
      List<int> value => onValidData(stopwatch, value, receivePort),
      Exception value => onError(value, receivePort),
      _ => onDefault(receivePort)
    },
    onDone: () => print('done'),
  );
}

void onDefault(ReceivePort receivePort) {
  print('Something unexpected happened');
  receivePort.close();
}

void onError(Exception error, ReceivePort receivePort) {
  print(error.toString());
  receivePort.close();
}

void onValidData(Stopwatch stopwatch, List<int> output, ReceivePort receivePort) {
  stopwatch.stop();
  print('Total future time: ${stopwatch.elapsed}');
  print(output);
  receivePort.close();

  print('Delays outside isolates: $delays');
  print('Multipliers outside isolates: $multipliers');
}
