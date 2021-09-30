/// Python range() analog

class Range extends Iterable<int> {
  final int start;
  final int end;
  final int step;

  Range(this.start, this.end, {this.step = 1});

  @override
  Iterator<int> get iterator => (
      start <= end ? _rangeASC() : _rangeDSC()
  ).iterator;

  Iterable<int> _rangeASC() sync* {
    for (int i = start; i < end; i += step) {
      yield i;
    }
  }

  Iterable<int> _rangeDSC() sync* {
    for (int i = start; i > end; i -= step) {
      yield i;
    }
  }

}
