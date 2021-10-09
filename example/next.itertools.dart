import 'package:pythonic_utils/pythonic_utils.dart';


void main() {
  var l1 = [1, 2, 3];
  var l2 = [-1, -2, -3];
  print(zip([l1, l2]).toList());
}
