import 'package:test/test.dart';

import 'package:pythonic_utils/pythonic_utils.dart';



void main() {

  group('next', () {

    setUp(() {});

    test('Test', () {

      var list = [1, 2, 3, 4];
      var it = list.iterator;

      for (var expected in list) {
        expect(next(it), expected);
      }

      try {
        next(it);
      } on StopIteration catch(err) {
        err is StopIteration;
      }

    });

  });

  group('zip', () {

    setUp(() {});

    test('Usually', () {
      var l1 = [1, 2, 3];
      var l2 = [4, 5, 6];
      var expected = [[1, 4], [2, 5], [3, 6]];

      expect(zip([l1, l2]).toList(),expected);

    });

    test('not some length', () {
      var l1 = [1, 2, 3];
      var l2 = [4, 5];
      var expected = [[1, 4], [2, 5]];

      expect(zip([l1, l2]).toList(), expected);

    });

    test('empty', () {
      expect(zip([]).isEmpty, isTrue);
    });

  });

}
