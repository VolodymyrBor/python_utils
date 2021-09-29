import './pair.dart';


class StopIterationError implements Exception {}


T next<T>(Iterator<T> it) {
  if (!it.moveNext()) { throw StopIterationError(); }
  return it.current;
}


Iterable<List<T>> zip<T>(Iterable<Iterable<T>> items) sync* {
  List<Iterator<T>> its = [
    for (var it in items) it.iterator
  ];

  while (true) {
    List<T> res = [];
    for (var it in its) {
      try {
        res.add(next(it));
      } on StopIterationError {
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


void main() {
  for (var item in zip([[1, 2, 3], [2, 3], [5, 6]])) {
    print(item);
  }

  for (var pair in enumerate([3, 5, 6])) {
    print('${pair.first}, ${pair.second}');
  }

}
