import './pair.dart';


class StopIteration implements Exception {}


T next<T>(Iterator<T> it) {
  if (!it.moveNext()) { throw StopIteration(); }
  return it.current;
}


Iterable<List<T>> zip<T>(Iterable<Iterable<T>> items) sync* {
  List<Iterator<T>> its = [
    for (var it in items) it.iterator
  ];

  while (true && its.isNotEmpty) {
    List<T> res = [];
    for (var it in its) {
      try {
        res.add(next(it));
      } on StopIteration {
        return;
      }
    }
    yield res;
  }
}


Iterable<Pair<T, int>> enumerate<T>(Iterable<T> it, {int start = 0}) sync* {
  int i = start;
  for (var item in it) {
    yield Pair(item, i);
    i++;
  }
}
