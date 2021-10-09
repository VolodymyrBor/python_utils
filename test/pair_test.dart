import 'package:test/test.dart';

import 'package:pythonic_utils/pythonic_utils.dart';



void main() {

  group('Pair tests', () {

    setUp(() {});

    test('Test attributes', () {

      var first = 2;
      var second = 'string';

      final pair = Pair(first, second);

      expect(pair.first, first);
      expect(pair.second, second);

    });


  });
}
