import 'package:freezed_annotation/freezed_annotation.dart';

part 'container.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class Container with _$Container {
  factory Container(List<int> list, [@Default(<String, int>{}) Map<String, int> dict]) = _Container;
}
