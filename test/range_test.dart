import 'package:test/test.dart';

import 'package:pythonic_utils/pythonic_utils.dart';



void main() {

  group('Range tests', () {

    setUp(() {});

    test('Test range ASC', () {
      expect(Range(1, 7, step: 2), [1, 3, 5]);
      expect(Range(1, 8, step: 3), [1, 4, 7]);
    });

    test('Test range DSC', () {
      expect(Range(8, 1, step: 2), [8, 6, 4, 2]);
      expect(Range(4, 0, step: 3), [4, 1]);
      expect(Range(4, 0), [4, 3, 2, 1]);
    });


  });
}
