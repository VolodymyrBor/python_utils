Iterable<String> strIter(String string) sync* {
  for (var char in string.split('')) { yield char; }
}


String removeSuffix(String string, String suffix) {
  var suffixEnd = string.length;
  var suffixStart = string.length - suffix.length;
  var expectedSuffix = '';
  try {
    expectedSuffix = string.substring(suffixStart, suffixEnd);
  } on RangeError { return string; }

  if (expectedSuffix == suffix) { return string.substring(0, suffixStart); }
  return string;
}


String strJoin(String connector,  Iterable<String> items) {
  var result = '';
  for (var string in items) {
    result += string + connector;
  }
  return removeSuffix(result, connector);
}


String toString(Object obj) {
  return obj.toString();
}
