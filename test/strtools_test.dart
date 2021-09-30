import 'package:test/test.dart';

import 'package:pythonic_utils/pythonic_utils.dart';



void main() {

  group('strIter', () {

    setUp(() {});

    test('Test', () {

      var inputs = [
        'string',
        '', // empty string
      ];
      for (var string in inputs) {
        expect(strIter(string).toList(), string.split('').toList());
      }
    });


  });

  group('toString', () {

    setUp(() {});

    test('Test', () {

      var inputs = [
        'string',
        1,
        [1, 2, 3],
        {1, 2, 3},
        {1: 2, 2: 2, 3: 4},
      ];
      for (var input in inputs) {
        expect(toString(input), input.toString());
      }
    });


  });

  group('removeSuffix', () {

    setUp(() {});

    test('Test', () {

      var inputs = [
        ['file.csv', '.csv', 'file'],
        ['file.csv1', 'v1', 'file.cs'],
        ['', '.csv', ''],
        ['without suffix', '.csv', 'without suffix'],
      ];
      for (var input in inputs) {
        expect(removeSuffix(input[0], input[1]), input[2]);
      }
    });


  });

  group('strJoin', () {

    setUp(() {});

    test('Test', () {
      expect('word1,word2,word3', strJoin(',', ['word1', 'word2', 'word3']));
    });


  });

}
